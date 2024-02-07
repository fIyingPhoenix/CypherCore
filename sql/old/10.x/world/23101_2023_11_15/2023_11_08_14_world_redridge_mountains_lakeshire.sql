SET @OGUID := 3004907;

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=51886 WHERE `entry`=190046; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1732 WHERE `entry`=190046; -- Candy Bucket

-- Quests
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=51886 WHERE `ID`=12342; -- Candy Bucket

UPDATE `quest_offer_reward` SET `VerifiedBuild`=51886 WHERE `ID`=12342;

DELETE FROM `gameobject_queststarter` WHERE `id`=190046;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190046, 12342, 51886);

UPDATE `gameobject_questender` SET `VerifiedBuild`=51886 WHERE (`id`=190046 AND `quest`=12342);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190046;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+73;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 0, 44, 44, '0', 0, 0, -9422.306640625, -2237.393310546875, 68.50774383544921875, 5.35816192626953125, 0, 0, -0.446197509765625, 0.894934535026550292, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Redridge Mountains - Difficulty: 0) CreateObject1
(@OGUID+1, 180405, 0, 44, 68, '0', 0, 0, -9288.8056640625, -2269.741455078125, 69.3785400390625, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+2, 180405, 0, 44, 69, '0', 0, 0, -9245.943359375, -2215.571533203125, 66.8433380126953125, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Lakeshire - Difficulty: 0) CreateObject1
(@OGUID+3, 180405, 0, 44, 68, '0', 0, 0, -9239.37109375, -2161.2626953125, 71.21173858642578125, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+4, 180405, 0, 44, 68, '0', 0, 0, -9216.7734375, -2141.095703125, 65.43981170654296875, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+5, 180406, 0, 44, 44, '0', 0, 0, -9402.689453125, -2261.25, 69.37688446044921875, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Redridge Mountains - Difficulty: 0) CreateObject1
(@OGUID+6, 180406, 0, 44, 68, '0', 0, 0, -9293.1142578125, -2300.470458984375, 69.44182586669921875, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+7, 180406, 0, 44, 69, '0', 0, 0, -9245.9853515625, -2206.873291015625, 66.8433380126953125, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Lakeshire - Difficulty: 0) CreateObject1
(@OGUID+8, 180406, 0, 44, 68, '0', 0, 0, -9241.8359375, -2160.5263671875, 65.43981170654296875, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+9, 180406, 0, 44, 68, '0', 0, 0, -9213.1064453125, -2165.04052734375, 67.574981689453125, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+10, 180407, 0, 44, 44, '0', 0, 0, -9405.30078125, -2291.819580078125, 69.37725830078125, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Redridge Mountains - Difficulty: 0) CreateObject1
(@OGUID+11, 180407, 0, 44, 68, '0', 0, 0, -9233.9443359375, -2140.703857421875, 65.4398193359375, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+12, 180407, 0, 44, 68, '0', 0, 0, -9212.9462890625, -2157.917236328125, 67.58042144775390625, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+13, 180407, 0, 44, 69, '0', 0, 0, -9199.9453125, -2147.662353515625, 71.21173858642578125, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Lakeshire - Difficulty: 0) CreateObject1
(@OGUID+14, 180408, 0, 44, 44, '0', 0, 0, -9410.87890625, -2293.482666015625, 73.28820037841796875, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746, 120, 255, 1, 51886), -- G_WitchHat_01 (Area: Redridge Mountains - Difficulty: 0) CreateObject1
(@OGUID+15, 180408, 0, 44, 44, '0', 0, 0, -9407.4306640625, -2258.076416015625, 73.297607421875, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746, 120, 255, 1, 51886), -- G_WitchHat_01 (Area: Redridge Mountains - Difficulty: 0) CreateObject1
(@OGUID+16, 180408, 0, 44, 68, '0', 0, 0, -9287.6201171875, -2303.76904296875, 73.30612945556640625, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402, 120, 255, 1, 51886), -- G_WitchHat_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+17, 180408, 0, 44, 68, '0', 0, 0, -9284.310546875, -2267.82470703125, 73.23038482666015625, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402, 120, 255, 1, 51886), -- G_WitchHat_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+18, 180410, 0, 44, 68, '0', 0, 0, -9237.2470703125, -2143.213623046875, 72.01729583740234375, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+19, 180410, 0, 44, 68, '0', 0, 0, -9223.1953125, -2150.449462890625, 72.27423858642578125, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+20, 180410, 0, 44, 68, '0', 0, 0, -9223.0927734375, -2144.120849609375, 72.27423858642578125, 0, 0, 0, 0, 1, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+21, 180411, 0, 44, 68, '0', 0, 0, -9270.4365234375, -2269.753173828125, 83.76007843017578125, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+22, 180411, 0, 44, 68, '0', 0, 0, -9244.654296875, -2160.475830078125, 73.2437896728515625, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+23, 180415, 0, 44, 68, '0', 0, 0, -9231.3193359375, -2156.89404296875, 65.4916839599609375, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+24, 180415, 0, 44, 68, '0', 0, 0, -9231.2412109375, -2153.16845703125, 65.49967193603515625, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+25, 180415, 0, 44, 68, '0', 0, 0, -9229.4658203125, -2156.916748046875, 65.096527099609375, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+26, 180415, 0, 44, 68, '0', 0, 0, -9221.8056640625, -2157.03466796875, 65.07159423828125, 5.497788906097412109, 0, 0, -0.38268280029296875, 0.923879802227020263, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+27, 180415, 0, 44, 68, '0', 0, 0, -9229.4375, -2153.203125, 65.11737060546875, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+28, 180415, 0, 44, 68, '0', 0, 0, -9219.8876953125, -2153.380126953125, 65.53784942626953125, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+29, 180415, 0, 44, 68, '0', 0, 0, -9221.66015625, -2153.314208984375, 65.160675048828125, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+30, 180415, 0, 44, 68, '0', 0, 0, -9219.9658203125, -2157.038330078125, 65.53692626953125, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+31, 180415, 0, 44, 68, '0', 0, 0, -9215.15625, -2161.8525390625, 68.74405670166015625, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126, 120, 255, 1, 51886), -- CandleBlack01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+32, 180425, 0, 44, 68, '0', 0, 0, -9221.607421875, -2160.947998046875, 72.4998016357421875, 3.141592741012573242, 0, 0, -1, 0, 120, 255, 1, 51886), -- SkullCandle01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+33, 180425, 0, 44, 68, '0', 0, 0, -9221.2822265625, -2161.603271484375, 65.958251953125, 3.141592741012573242, 0, 0, -1, 0, 120, 255, 1, 51886), -- SkullCandle01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+34, 180425, 0, 44, 68, '0', 0, 0, -9215.0517578125, -2161.072998046875, 68.82494354248046875, 6.248279094696044921, 0, 0, -0.01745223999023437, 0.999847710132598876, 120, 255, 1, 51886), -- SkullCandle01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+35, 180426, 0, 44, 68, '0', 0, 0, -9272.2568359375, -2156.2744140625, 74.7746124267578125, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+36, 180426, 0, 44, 68, '0', 0, 0, -9272.375, -2155.75, 68.63214874267578125, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+37, 180426, 0, 44, 68, '0', 0, 0, -9272.21875, -2156.34033203125, 78.1217803955078125, 4.136432647705078125, 0, 0, -0.87881660461425781, 0.477159708738327026, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+38, 180426, 0, 44, 68, '0', 0, 0, -9272.767578125, -2155.954833984375, 70.52166748046875, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+39, 180426, 0, 44, 68, '0', 0, 0, -9272.1845703125, -2155.59033203125, 72.25897979736328125, 4.084071159362792968, 0, 0, -0.8910064697265625, 0.453990638256072998, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+40, 180426, 0, 44, 68, '0', 0, 0, -9272.2900390625, -2155.9462890625, 73.72779083251953125, 0.331610709428787231, 0, 0, 0.16504669189453125, 0.986285746097564697, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+41, 180426, 0, 44, 68, '0', 0, 0, -9272.625, -2155.807373046875, 70.60741424560546875, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+42, 180426, 0, 44, 68, '0', 0, 0, -9272.591796875, -2155.626708984375, 71.7587738037109375, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+43, 180426, 0, 44, 68, '0', 0, 0, -9272.8056640625, -2155.5, 75.10117340087890625, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+44, 180426, 0, 44, 68, '0', 0, 0, -9272.1142578125, -2155.178955078125, 75.03144073486328125, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687, 120, 255, 1, 51886), -- Bat01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+45, 180427, 0, 44, 68, '0', 0, 0, -9272.5263671875, -2156.220458984375, 75.49765777587890625, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+46, 180427, 0, 44, 68, '0', 0, 0, -9272.142578125, -2156.145751953125, 76.2433929443359375, 3.141592741012573242, 0, 0, -1, 0, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+47, 180427, 0, 44, 68, '0', 0, 0, -9272.826171875, -2155.795166015625, 74.779937744140625, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+48, 180427, 0, 44, 68, '0', 0, 0, -9272.9736328125, -2155.91845703125, 77.10079193115234375, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+49, 180427, 0, 44, 68, '0', 0, 0, -9273.1494140625, -2155.55908203125, 74.73769378662109375, 3.420850038528442382, 0, 0, -0.99026775360107421, 0.139175355434417724, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+50, 180427, 0, 44, 68, '0', 0, 0, -9272.2431640625, -2155.791748046875, 76.09332275390625, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+51, 180427, 0, 44, 68, '0', 0, 0, -9272.6630859375, -2155.34375, 70.88851165771484375, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+52, 180427, 0, 44, 68, '0', 0, 0, -9272.0380859375, -2155.5244140625, 73.29476165771484375, 5.811946868896484375, 0, 0, -0.2334451675415039, 0.972369968891143798, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+53, 180427, 0, 44, 68, '0', 0, 0, -9272.5283203125, -2156.015625, 71.71578216552734375, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+54, 180427, 0, 44, 68, '0', 0, 0, -9272.1044921875, -2155.397705078125, 75.31858062744140625, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087, 120, 255, 1, 51886), -- Bat02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+55, 180471, 0, 44, 68, '0', 0, 0, -9246.4931640625, -2144.93408203125, 67.47220611572265625, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+56, 180471, 0, 44, 68, '0', 0, 0, -9246.51953125, -2152.147705078125, 67.40982818603515625, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+57, 180471, 0, 44, 68, '0', 0, 0, -9208.28515625, -2168.95654296875, 73.37648773193359375, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+58, 180472, 0, 44, 68, '0', 0, 0, -9246.5126953125, -2148.58642578125, 70.8801116943359375, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+59, 180472, 0, 44, 68, '0', 0, 0, -9243.4970703125, -2168.3525390625, 74.8330230712890625, 4.084071159362792968, 0, 0, -0.8910064697265625, 0.453990638256072998, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+60, 180472, 0, 44, 68, '0', 0, 0, -9233.5380859375, -2167.75, 74.37000274658203125, 4.97418975830078125, 0, 0, -0.60876083374023437, 0.793353796005249023, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+61, 180472, 0, 44, 68, '0', 0, 0, -9235.4345703125, -2167.010498046875, 81.50962066650390625, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+62, 180472, 0, 44, 68, '0', 0, 0, -9225.4423828125, -2167.15625, 81.5396881103515625, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+63, 180472, 0, 44, 68, '0', 0, 0, -9233.6357421875, -2140.8837890625, 75.86322784423828125, 1.640606880187988281, 0, 0, 0.731352806091308593, 0.6819993257522583, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+64, 180472, 0, 44, 68, '0', 0, 0, -9225.25390625, -2144.251708984375, 67.62896728515625, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+65, 180472, 0, 44, 68, '0', 0, 0, -9219.7080078125, -2158.60595703125, 69.08957672119140625, 3.263772249221801757, 0, 0, -0.99813461303710937, 0.061051756143569946, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+66, 180472, 0, 44, 68, '0', 0, 0, -9209.25, -2161.1494140625, 75.82123565673828125, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+67, 180472, 0, 44, 68, '0', 0, 0, -9215.4931640625, -2167.41845703125, 81.5162353515625, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+68, 180472, 0, 44, 68, '0', 0, 0, -9217.876953125, -2167.942626953125, 74.37424468994140625, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+69, 180472, 0, 44, 68, '0', 0, 0, -9213.142578125, -2147.568359375, 78.88397216796875, 3.141592741012573242, 0, 0, -1, 0, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+70, 180472, 0, 44, 68, '0', 0, 0, -9217.09765625, -2141.0087890625, 75.81430816650390625, 2.094393253326416015, 0, 0, 0.866024971008300781, 0.50000077486038208, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+71, 180472, 0, 44, 69, '0', 0, 0, -9191.4345703125, -2148.036376953125, 75.69803619384765625, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Lakeshire - Difficulty: 0) CreateObject1
(@OGUID+72, 180523, 0, 44, 68, '0', 0, 0, -9217.9873046875, -2151.346923828125, 64.63164520263671875, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058, 120, 255, 1, 51886), -- Apple Bob (Area: Lake Everstill - Difficulty: 0) CreateObject1
(@OGUID+73, 190046, 0, 44, 68, '0', 0, 0, -9225.3369140625, -2158.928955078125, 63.71120071411132812, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432, 120, 255, 1, 51886); -- Candy Bucket (Area: Lake Everstill - Difficulty: 0) CreateObject1

-- Event spawns
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+73;
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
(12, @OGUID+73);
