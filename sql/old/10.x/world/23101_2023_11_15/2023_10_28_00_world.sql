SET @CGUID := 7000028;
SET @OGUID := 7000014;

-- Gameobject templates
DELETE FROM `gameobject_template_addon` WHERE `entry`=316754;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `WorldEffectID`, `AIAnimKitID`) VALUES
(316754, 35, 4, 0, 0); -- Candy Bucket

-- Quests
DELETE FROM `quest_offer_reward` WHERE `ID`=54709;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(54709, 0, 0, 0, 0, 0, 0, 0, 0, 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!', 51886); -- Candy Bucket

DELETE FROM `gameobject_queststarter` WHERE (`id`=316754 AND `quest`=54709);
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(316754, 54709, 51886); -- Candy Bucket ended by Candy Bucket

DELETE FROM `gameobject_questender` WHERE (`id`=316754 AND `quest`=54709);
INSERT INTO `gameobject_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(316754, 54709, 51886); -- Candy Bucket ended by Candy Bucket

-- Creature spawns
DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VerifiedBuild`) VALUES
(@CGUID+0, 40435, 1642, 8499, 8670, '0', 0, 0, 0, 0, -1076.3228759765625, 818.26214599609375, 434.41619873046875, 3.861127138137817382, 120, 0, 0, 112919, 0, 0, NULL, NULL, NULL, NULL, 51886); -- Headless Ghost (Area: Dazar'alor - Difficulty: 0) CreateObject1 (Auras: 33900 - Shroud of Death)

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+84;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 1642, 8499, 8670, '0', 0, 0, -1131.2291259765625, 815.8194580078125, 444.801788330078125, 3.379469633102416992, 0, 0, -0.9929351806640625, 0.118658117949962615, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+1, 180405, 1642, 8499, 8670, '0', 0, 0, -1129.421875, 834.52081298828125, 487.863189697265625, 2.633406639099121093, 0, 0, 0.967891693115234375, 0.251367628574371337, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+2, 180405, 1642, 8499, 8670, '0', 0, 0, -1087.6353759765625, 811.70660400390625, 448.600067138671875, 3.379469633102416992, 0, 0, -0.9929351806640625, 0.118658117949962615, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+3, 180405, 1642, 8499, 8670, '0', 0, 0, -1132.5035400390625, 798.826416015625, 437.541473388671875, 2.633406639099121093, 0, 0, 0.967891693115234375, 0.251367628574371337, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+4, 180405, 1642, 8499, 8670, '0', 0, 0, -1111.96533203125, 797.70489501953125, 435.332855224609375, 2.633406639099121093, 0, 0, 0.967891693115234375, 0.251367628574371337, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+5, 180405, 1642, 8499, 8670, '0', 0, 0, -1025.90625, 811.5242919921875, 437.090484619140625, 5.286466121673583984, 0, 0, -0.47798538208007812, 0.878367781639099121, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+6, 180406, 1642, 8499, 8670, '0', 0, 0, -1117.9254150390625, 793.48089599609375, 444.801788330078125, 0.498791694641113281, 0, 0, 0.24681854248046875, 0.969061732292175292, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+7, 180406, 1642, 8499, 8670, '0', 0, 0, -1117.954833984375, 815.73614501953125, 444.801788330078125, 3.65618896484375, 0, 0, -0.96708106994628906, 0.254468441009521484, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+8, 180406, 1642, 8499, 8670, '0', 0, 0, -1144.251708984375, 782.03643798828125, 433.325042724609375, 1.407295107841491699, 0, 0, 0.647003173828125, 0.762487351894378662, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+9, 180406, 1642, 8499, 8670, '0', 0, 0, -1078.1666259765625, 811.79864501953125, 448.600067138671875, 3.55430912971496582, 0, 0, -0.97878360748291015, 0.20489668846130371, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+10, 180406, 1642, 8499, 8670, '0', 0, 0, -1078.2535400390625, 797.21527099609375, 448.600067138671875, 0.539281249046325683, 0, 0, 0.266385078430175781, 0.963866710662841796, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+11, 180406, 1642, 8499, 8670, '0', 0, 0, -1075.795166015625, 825.54168701171875, 445.58233642578125, 4.40411376953125, 0, 0, -0.80728435516357421, 0.590162694454193115, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+12, 180406, 1642, 8499, 8670, '0', 0, 0, -1025.859375, 798.94268798828125, 437.090484619140625, 4.979049205780029296, 0, 0, -0.60683155059814453, 0.79483044147491455, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+13, 180407, 1642, 8499, 8670, '0', 0, 0, -1129.392333984375, 775.06597900390625, 487.863128662109375, 1.308245420455932617, 0, 0, 0.608463287353515625, 0.793582022190093994, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+14, 180407, 1642, 8499, 8670, '0', 0, 0, -1131.2535400390625, 793.57464599609375, 444.801788330078125, 0.359478324651718139, 0, 0, 0.178772926330566406, 0.983890354633331298, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+15, 180407, 1642, 8499, 8670, '0', 0, 0, -1087.6649169921875, 797.2586669921875, 448.600067138671875, 0.308833539485931396, 0, 0, 0.153803825378417968, 0.988101422786712646, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+16, 180407, 1642, 8499, 8670, '0', 0, 0, -1112.361083984375, 811.92535400390625, 435.332855224609375, 1.308245420455932617, 0, 0, 0.608463287353515625, 0.793582022190093994, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+17, 180407, 1642, 8499, 8670, '0', 0, 0, -1132.4166259765625, 810.3367919921875, 437.541473388671875, 1.308245420455932617, 0, 0, 0.608463287353515625, 0.793582022190093994, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+18, 180407, 1642, 8499, 8670, '0', 0, 0, -1099.4722900390625, 765.52606201171875, 435.339019775390625, 2.712684869766235351, 0, 0, 0.977092742919921875, 0.212813898921012878, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+19, 180410, 1642, 8499, 8670, '0', 0, 0, -1132.111083984375, 840.03125, 493.241424560546875, 0.00479698646813631, 0, 0, 0.002398490905761718, 0.999997079372406005, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+20, 180410, 1642, 8499, 8670, '0', 0, 0, -1131.779541015625, 768.62152099609375, 493.241424560546875, 0.048819620162248611, 0, 0, 0.024407386779785156, 0.999702095985412597, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+21, 180410, 1642, 8499, 8670, '0', 0, 0, -1091.467041015625, 787.92706298828125, 439.162872314453125, 1.583769202232360839, 0, 0, 0.711678504943847656, 0.702505290508270263, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+22, 180410, 1642, 8499, 8670, '0', 0, 0, -1126.5885009765625, 856.97222900390625, 446.993011474609375, 4.783641815185546875, 0, 0, -0.68147182464599609, 0.73184436559677124, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+23, 180410, 1642, 8499, 8670, '0', 0, 0, -1126.501708984375, 752.420166015625, 447.081878662109375, 1.547181367874145507, 0, 0, 0.698708534240722656, 0.715406417846679687, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+24, 180410, 1642, 8499, 8670, '0', 0, 0, -1091.467041015625, 821.498291015625, 439.162872314453125, 4.805901527404785156, 0, 0, -0.67328453063964843, 0.739383518695831298, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+25, 180410, 1642, 8499, 8670, '0', 0, 0, -1069.595458984375, 854.88018798828125, 438.321502685546875, 3.216021299362182617, 0, 0, -0.99930763244628906, 0.037205621600151062, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+26, 180410, 1642, 8499, 8670, '0', 0, 0, -1069.6129150390625, 754.67535400390625, 438.321502685546875, 3.216021299362182617, 0, 0, -0.99930763244628906, 0.037205621600151062, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+27, 180411, 1642, 8499, 8670, '0', 0, 0, -1135.501708984375, 773.50518798828125, 448.247161865234375, 5.117574691772460937, 0, 0, -0.55036830902099609, 0.834922015666961669, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+28, 180411, 1642, 8499, 8670, '0', 0, 0, -1117.5867919921875, 773.546875, 448.247161865234375, 4.796473026275634765, 0, 0, -0.67676258087158203, 0.736201345920562744, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+29, 180411, 1642, 8499, 8670, '0', 0, 0, -1135.5694580078125, 835.8836669921875, 448.247161865234375, 1.135750055313110351, 0, 0, 0.537841796875, 0.843045771121978759, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+30, 180411, 1642, 8499, 8670, '0', 0, 0, -1117.4896240234375, 835.8836669921875, 448.247161865234375, 1.135750055313110351, 0, 0, 0.537841796875, 0.843045771121978759, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+31, 180411, 1642, 8499, 8670, '0', 0, 0, -1095.3211669921875, 797.451416015625, 440.763885498046875, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+32, 180411, 1642, 8499, 8670, '0', 0, 0, -1095.185791015625, 812.05731201171875, 440.763885498046875, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+33, 180415, 1642, 8499, 8670, '0', 0, 0, -1135.7066650390625, 814.86285400390625, 443.400909423828125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+34, 180415, 1642, 8499, 8670, '0', 0, 0, -1135.7117919921875, 817.060791015625, 444.534820556640625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+35, 180415, 1642, 8499, 8670, '0', 0, 0, -1135.767333984375, 794.5242919921875, 443.400909423828125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+36, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.611083984375, 815.15106201171875, 443.29180908203125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+37, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.484375, 817.01043701171875, 444.534820556640625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+38, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.48095703125, 792.22222900390625, 444.534820556640625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+39, 180415, 1642, 8499, 8670, '0', 0, 0, -1135.74658203125, 792.1632080078125, 444.534820556640625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+40, 180415, 1642, 8499, 8670, '0', 0, 0, -1116.44970703125, 798.78302001953125, 438.62005615234375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+41, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.5850830078125, 798.30731201171875, 440.601348876953125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+42, 180415, 1642, 8499, 8670, '0', 0, 0, -1135.6822509765625, 813.17706298828125, 441.84185791015625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+43, 180415, 1642, 8499, 8670, '0', 0, 0, -1135.7117919921875, 810.97918701171875, 440.601348876953125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+44, 180415, 1642, 8499, 8670, '0', 0, 0, -1104.454833984375, 794.3507080078125, 442.9814453125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+45, 180415, 1642, 8499, 8670, '0', 0, 0, -1107.967041015625, 781.748291015625, 446.008636474609375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+46, 180415, 1642, 8499, 8670, '0', 0, 0, -1109.611083984375, 781.82293701171875, 444.856170654296875, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+47, 180415, 1642, 8499, 8670, '0', 0, 0, -1110.032958984375, 835.98614501953125, 444.958892822265625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+48, 180415, 1642, 8499, 8670, '0', 0, 0, -1134.607666015625, 799.107666015625, 439.26776123046875, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+49, 180415, 1642, 8499, 8670, '0', 0, 0, -1135.732666015625, 798.33331298828125, 440.601348876953125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+50, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.5260009765625, 799.85418701171875, 439.286224365234375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+51, 180415, 1642, 8499, 8670, '0', 0, 0, -1106.032958984375, 794.01214599609375, 444.400543212890625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+52, 180415, 1642, 8499, 8670, '0', 0, 0, -1106.1353759765625, 815.4930419921875, 444.400543212890625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+53, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.5225830078125, 796.33160400390625, 441.84185791015625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+54, 180415, 1642, 8499, 8670, '0', 0, 0, -1116.4444580078125, 810.5555419921875, 438.62005615234375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+55, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.5711669921875, 811.22222900390625, 440.601348876953125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+56, 180415, 1642, 8499, 8670, '0', 0, 0, -1107.79345703125, 836.00518798828125, 446.008636474609375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+57, 180415, 1642, 8499, 8670, '0', 0, 0, -1113.6944580078125, 810.6961669921875, 437.109893798828125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+58, 180415, 1642, 8499, 8670, '0', 0, 0, -1101.984375, 814.40802001953125, 441.32879638671875, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+59, 180415, 1642, 8499, 8670, '0', 0, 0, -1109.9600830078125, 773.48785400390625, 444.958831787109375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+60, 180415, 1642, 8499, 8670, '0', 0, 0, -1107.77783203125, 827.65972900390625, 446.008636474609375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+61, 180415, 1642, 8499, 8670, '0', 0, 0, -1135.7396240234375, 796.19268798828125, 441.84185791015625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+62, 180415, 1642, 8499, 8670, '0', 0, 0, -1134.5399169921875, 810.30731201171875, 439.26776123046875, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+63, 180415, 1642, 8499, 8670, '0', 0, 0, -1113.826416015625, 798.810791015625, 437.109893798828125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+64, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.4461669921875, 809.50518798828125, 439.28582763671875, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+65, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.548583984375, 813.1788330078125, 441.84185791015625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+66, 180415, 1642, 8499, 8670, '0', 0, 0, -1142.52783203125, 794.2725830078125, 443.292388916015625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+67, 180415, 1642, 8499, 8670, '0', 0, 0, -1109.935791015625, 827.654541015625, 444.958892822265625, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+68, 180415, 1642, 8499, 8670, '0', 0, 0, -1102.232666015625, 794.9617919921875, 441.32879638671875, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+69, 180415, 1642, 8499, 8670, '0', 0, 0, -1107.80908203125, 773.46875, 446.008636474609375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+70, 180415, 1642, 8499, 8670, '0', 0, 0, -1104.3507080078125, 814.99652099609375, 442.981781005859375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+71, 180415, 1642, 8499, 8670, '0', 0, 0, -1097.5, 813.17364501953125, 438.356781005859375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+72, 180415, 1642, 8499, 8670, '0', 0, 0, -1099.782958984375, 813.79339599609375, 439.901702880859375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+73, 180415, 1642, 8499, 8670, '0', 0, 0, -1099.8211669921875, 795.6336669921875, 439.901702880859375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+74, 180415, 1642, 8499, 8670, '0', 0, 0, -1095.704833984375, 796.685791015625, 436.83441162109375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+75, 180415, 1642, 8499, 8670, '0', 0, 0, -1097.4305419921875, 796.22222900390625, 438.356781005859375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+76, 180415, 1642, 8499, 8670, '0', 0, 0, -1095.657958984375, 812.717041015625, 436.834320068359375, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+77, 180472, 1642, 8499, 8670, '0', 0, 0, -1095.265625, 767.982666015625, 454.25732421875, 1.362620472908020019, 0, 0, 0.629811286926269531, 0.776748180389404296, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+78, 180472, 1642, 8499, 8670, '0', 0, 0, -1082.1805419921875, 767.9757080078125, 454.253326416015625, 4.987898826599121093, 0, 0, -0.60330867767333984, 0.797507762908935546, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+79, 180472, 1642, 8499, 8670, '0', 0, 0, -1082.170166015625, 830.1007080078125, 454.18316650390625, 2.859254837036132812, 0, 0, 0.990052223205566406, 0.140700429677963256, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+80, 180472, 1642, 8499, 8670, '0', 0, 0, -1082.0399169921875, 841.6805419921875, 454.18316650390625, 0.503172278404235839, 0, 0, 0.248940467834472656, 0.968518793582916259, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+81, 180523, 1642, 8499, 8670, '0', 0, 0, -1141.5052490234375, 805.8663330078125, 438.200347900390625, 0.750490784645080566, 0, 0, 0.3665008544921875, 0.93041771650314331, 120, 255, 1, 51886), -- Apple Bob (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+82, 207941, 1642, 8499, 8670, '0', 0, 0, -1003.52081298828125, 819.3038330078125, 414.26068115234375, 6.259623050689697265, 0.241608619689941406, 0.062893867492675781, -0.02775764465332031, 0.967935502529144287, 120, 255, 1, 51886), -- G_WitchHat_01 scale 2.0 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+83, 207941, 1642, 8499, 8670, '0', 0, 0, -1003.08331298828125, 791.25177001953125, 414.170562744140625, 3.167672634124755859, 0.010250568389892578, -0.21125030517578125, -0.97731494903564453, 0.01112381462007761, 120, 255, 1, 51886), -- G_WitchHat_01 scale 2.0 (Area: Dazar'alor - Difficulty: 0) CreateObject1
(@OGUID+84, 316754, 1642, 8499, 8670, '0', 0, 0, -1141.6875, 802.810791015625, 438.200347900390625, 1.8704071044921875, 0, 0, 0.804719924926757812, 0.593654632568359375, 120, 255, 1, 51886); -- Candy Bucket (Area: Dazar'alor - Difficulty: 0) CreateObject1

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=12 AND `guid`=@CGUID+0;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(12, @CGUID+0);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+84;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40),
(12, @OGUID+41),
(12, @OGUID+42),
(12, @OGUID+43),
(12, @OGUID+44),
(12, @OGUID+45),
(12, @OGUID+46),
(12, @OGUID+47),
(12, @OGUID+48),
(12, @OGUID+49),
(12, @OGUID+50),
(12, @OGUID+51),
(12, @OGUID+52),
(12, @OGUID+53),
(12, @OGUID+54),
(12, @OGUID+55),
(12, @OGUID+56),
(12, @OGUID+57),
(12, @OGUID+58),
(12, @OGUID+59),
(12, @OGUID+60),
(12, @OGUID+61),
(12, @OGUID+62),
(12, @OGUID+63),
(12, @OGUID+64),
(12, @OGUID+65),
(12, @OGUID+66),
(12, @OGUID+67),
(12, @OGUID+68),
(12, @OGUID+69),
(12, @OGUID+70),
(12, @OGUID+71),
(12, @OGUID+72),
(12, @OGUID+73),
(12, @OGUID+74),
(12, @OGUID+75),
(12, @OGUID+76),
(12, @OGUID+77),
(12, @OGUID+78),
(12, @OGUID+79),
(12, @OGUID+80),
(12, @OGUID+81),
(12, @OGUID+82),
(12, @OGUID+83),
(12, @OGUID+84);
