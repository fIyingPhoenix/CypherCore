/*
 * Copyright (C) 2012-2020 CypherCore <http://github.com/CypherCore>
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

using Framework.Constants;
using Game.AI;
using Game.Entities;
using Game.Scripting;
using Game.Spells;
using System;

namespace Scripts.EasternKingdoms.BlackrockMountain.MoltenCore.Majordomo
{
    struct SpellIds
    {
        public const uint SummonRagnaros = 19774;
        public const uint BlastWave = 20229;
        public const uint Teleport = 20618;
        public const uint MagicReflection = 20619;
        public const uint AegisOfRagnaros = 20620;
        public const uint DamageReflection = 21075;
    }

    struct TextIds
    {
        public const uint SayAggro = 0;
        public const uint SaySpawn = 1;
        public const uint SaySlay = 2;
        public const uint SaySpecial = 3;
        public const uint SayDefeat = 4;

        public const uint SaySummonMaj = 5;
        public const uint SayArrival2Maj = 6;

        public const uint OptionIdYouChallengedUs = 0;
        public const uint MenuOptionYouChallengedUs = 4108;
    }

    [Script]
    class boss_majordomo : BossAI
    {
        public boss_majordomo(Creature creature) : base(creature, BossIds.MajordomoExecutus) { }

        public override void KilledUnit(Unit victim)
        {
            if (RandomHelper.URand(0, 99) < 25)
                Talk(TextIds.SaySlay);
        }

        public override void JustEngagedWith(Unit who)
        {
            base.JustEngagedWith(who);
            Talk(TextIds.SayAggro);

            _scheduler.Schedule(TimeSpan.FromSeconds(30), task =>
            {
                DoCast(me, SpellIds.MagicReflection);
                task.Repeat(TimeSpan.FromSeconds(30));
            });
            _scheduler.Schedule(TimeSpan.FromSeconds(15), task =>
            {
                DoCast(me, SpellIds.DamageReflection);
                task.Repeat(TimeSpan.FromSeconds(30));
            });
            _scheduler.Schedule(TimeSpan.FromSeconds(10), task =>
            {
                DoCastVictim(SpellIds.BlastWave);
                task.Repeat(TimeSpan.FromSeconds(10));
            });
            _scheduler.Schedule(TimeSpan.FromSeconds(20), task =>
            {
                Unit target = SelectTarget(SelectTargetMethod.Random, 1);
                if (target)
                    DoCast(target, SpellIds.Teleport);
                task.Repeat(TimeSpan.FromSeconds(20));
            });
        }

        public override void UpdateAI(uint diff)
        {
            _scheduler.Update(diff);

            if (instance.GetBossState(BossIds.MajordomoExecutus) != EncounterState.Done)
            {
                if (!UpdateVictim())
                    return;

                if (!me.FindNearestCreature(MCCreatureIds.FlamewakerHealer, 100.0f) && !me.FindNearestCreature(MCCreatureIds.FlamewakerElite, 100.0f))
                {
                    instance.UpdateEncounterStateForKilledCreature(me.GetEntry(), me);
                    me.SetFaction((uint)FactionTemplates.Friendly);
                    EnterEvadeMode();
                    Talk(TextIds.SayDefeat);
                    _JustDied();
                    _scheduler.Schedule(TimeSpan.FromSeconds(32), task =>
                    {
                        me.NearTeleportTo(MCMiscConst.RagnarosTelePos.GetPositionX(), MCMiscConst.RagnarosTelePos.GetPositionY(), MCMiscConst.RagnarosTelePos.GetPositionZ(), MCMiscConst.RagnarosTelePos.GetOrientation());
                        me.SetNpcFlag(NPCFlags.Gossip);
                    });
                    return;
                }

                if (me.HasUnitState(UnitState.Casting))
                    return;

                if (HealthBelowPct(50))
                    DoCast(me, SpellIds.AegisOfRagnaros, new CastSpellExtraArgs(true));

                DoMeleeAttackIfReady();
            }
        }

        public override void DoAction(int action)
        {
            if (action == ActionIds.StartRagnaros)
            {
                me.RemoveNpcFlag(NPCFlags.Gossip);
                Talk(TextIds.SaySummonMaj);

                _scheduler.Schedule(TimeSpan.FromSeconds(8), task =>
                {
                    instance.instance.SummonCreature(MCCreatureIds.Ragnaros, MCMiscConst.RagnarosSummonPos);
                });
                _scheduler.Schedule(TimeSpan.FromSeconds(24), task =>
                {
                    Talk(TextIds.SayArrival2Maj);
                });
            }
            else if (action == ActionIds.StartRagnarosAlt)
            {
                me.SetFaction((uint)FactionTemplates.Friendly);
                me.SetNpcFlag(NPCFlags.Gossip);
            }
        }

        public override bool OnGossipSelect(Player player, uint menuId, uint gossipListId)
        {
            if (menuId == TextIds.MenuOptionYouChallengedUs && gossipListId == TextIds.OptionIdYouChallengedUs)
            {
                player.CloseGossipMenu();
                DoAction(ActionIds.StartRagnaros);
            }
            return false;
        }
    }
}
