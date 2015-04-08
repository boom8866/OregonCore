-- Remove manually spawned ravagers from DB, now summoned by spell
DELETE FROM creature WHERE id=19461;

SET @GUID          := 69717;
SET @OGUID         := 5510;
DELETE FROM `creature` WHERE `id`=23142;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`,`curhealth`) VALUES
(@GUID+0, 23142, 530, 1, -5121.06, 598.424, 84.7603, 0.0581088, 600, 6542),
(@GUID+1, 23142, 530, 1, -5119.60, 601.834, 84.8180, 5.1726200, 600, 6542),
(@GUID+2, 23142, 530, 1, -5115.02, 601.537, 85.0292, 4.0204400, 600, 6542),
(@GUID+3, 23142, 530, 1, -5114.25, 597.062, 85.1574, 2.7049000, 600, 6542);

DELETE FROM `gameobject` WHERE `guid` IN (@OGUID);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID,50983,530,1, -5116.788574, 631.188660, 85.055522,0.949811,0,0,0.457254, 0.889336, 300, 0, 1);

UPDATE `creature` SET `position_x`= -5158.237305, `position_y`= 584.302612, `position_z`= 81.074142, `orientation`= 5.954358 WHERE `guid`= 78136; 
UPDATE `creature` SET `position_x`= -5156.172363, `position_y`= 590.695251, `position_z`= 80.769630, `orientation`= 5.502757 WHERE `guid`= 78135; 
UPDATE `creature` SET `position_x`= -5152.365723, `position_y`= 592.303040, `position_z`= 81.361931, `orientation`= 4.705578 WHERE `guid`= 78137; 
UPDATE `creature` SET `position_x`= -5113.345703, `position_y`= 623.850159, `position_z`= 86.736343, `orientation`= 1.033840 WHERE `guid`= 78160; 
UPDATE `creature` SET `position_x`= -5123.593750, `position_y`= 626.638916, `position_z`= 86.629669, `orientation`= 1.395123 WHERE `guid`= 78159; 
UPDATE `creature` SET `position_x`= -5165.503418, `position_y`= 568.109131, `position_z`= 80.523895, `orientation`= 2.707489 WHERE `guid`= 52107; 

-- Cleanup on Dragonmaw Ascendant!
DELETE FROM `creature` WHERE `guid` IN (52283, 52284, 52285, 52286, 52287, 52288, 52289, 52290, 52291, 52292, 52293, 52294, 52295, 52296, 52297, 52298, 52299, 52300, 52301, 52302, 52303, 52304, 52305, 52306, 52307, 52308, 52309, 52310, 52311, 52312, 52313, 52314, 52315, 52316, 52317, 52318, 52319, 52320, 52321, 52322, 52323, 52324, 52325, 52326, 52327, 52328, 52329, 52332, 52333);

-- Update Pos
UPDATE `creature` SET `position_x`=-4932.889, `position_y`=22.40549, `position_z`=62.24448, `orientation`=3.612832, `MovementType`=0 WHERE  `guid`=52330;
UPDATE `creature` SET `position_x`=-4941.292, `position_y`=35.20237, `position_z`=62.73532, `orientation`=3.612832, `MovementType`=0 WHERE  `guid`=52331;

-- Pathing for Dragonmaw Ascendant Entry: 22253 'TDB FORMAT' 
SET @NPC := 52275;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5195.857,`position_y`=90.12917,`position_z`=70.22656 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5195.857,90.12917,70.22656,0,0,0,0,100,0), -- 20:28:25
(@PATH,2,-5191.49,106.8146,71.93172,0,0,0,0,100,0), -- 20:28:37
(@PATH,3,-5195.716,138.8907,71.36693,0,0,0,0,100,0), -- 20:28:39
(@PATH,4,-5200.492,147.7713,70.40874,0,0,0,0,100,0), -- 20:28:47
(@PATH,5,-5209.126,186.8668,72.33409,0,0,0,0,100,0), -- 20:28:51
(@PATH,6,-5208.013,200.6249,73.10587,0,0,0,0,100,0), -- 20:28:59
(@PATH,7,-5201.791,256.0194,71.98375,0,0,0,0,100,0), -- 20:29:08
(@PATH,8,-5188.366,291.6975,73.16975,0,0,0,0,100,0), -- 20:29:12
(@PATH,9,-5182.603,302.7376,73.64639,0,0,0,0,100,0), -- 20:29:21
(@PATH,10,-5176.891,356.321,72.7616,0,0,0,0,100,0), -- 20:29:28
(@PATH,11,-5182.551,367.8651,72.34415,0,0,0,0,100,0), -- 20:29:34
(@PATH,12,-5180.885,365.6959,72.57543,0,0,0,0,100,0), -- 20:29:42
(@PATH,13,-5179.66,364.4311,72.66841,0,0,0,0,100,0), -- 20:29:46
(@PATH,14,-5174.673,325.8635,73.72121,0,0,0,0,100,0), -- 20:29:53
(@PATH,15,-5198.33,272.533,72.0965,0,0,0,0,100,0), -- 20:30:00
(@PATH,16,-5200.696,243.5709,72.67114,0,0,0,0,100,0), -- 20:30:07
(@PATH,17,-5201.835,233.1574,73.37646,0,0,0,0,100,0), -- 20:30:13
(@PATH,18,-5210.627,167.8349,70.08221,0,0,0,0,100,0), -- 20:30:20
(@PATH,19,-5198.43,145.466,70.45454,0,0,0,0,100,0), -- 20:30:29
(@PATH,20,-5195.288,134.2268,72.13242,0,0,0,0,100,0), -- 20:30:34
(@PATH,21,-5195.829,90.17783,70.22305,0,0,0,0,100,0); -- 20:30:41
-- 0x1C09FC424015BB4000001A00002191E8 .go -5195.857 90.12917 70.22656

-- Pathing for Dragonmaw Ascendant Entry: 22253 'TDB FORMAT' 
SET @NPC := 52276;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5218.906,`position_y`=565.3663,`position_z`=50.85233 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5218.906,565.3663,50.85233,0,0,0,0,100,0), -- 06:57:51
(@PATH,2,-5208.237,539.7261,64.97557,0,0,0,0,100,0), -- 06:58:07
(@PATH,3,-5207.74,528.3329,71.45394,0,0,0,0,100,0), -- 06:58:12
(@PATH,4,-5203.943,505.6842,74.86707,0,0,0,0,100,0), -- 06:58:15
(@PATH,5,-5201.894,495.4175,74.75183,0,0,0,0,100,0), -- 06:58:22
(@PATH,6,-5200.353,477.0113,74.51066,0,0,0,0,100,0), -- 06:58:25
(@PATH,7,-5196.964,442.6382,74.37379,0,0,0,0,100,0), -- 06:58:31
(@PATH,8,-5206.846,402.5792,75.1168,0,0,0,0,100,0), -- 06:58:37
(@PATH,9,-5195.471,385.1235,72.39382,0,0,0,0,100,0), -- 06:58:41
(@PATH,10,-5175.989,405.5393,74.1407,0,0,0,0,100,0), -- 06:58:46
(@PATH,11,-5170.418,417.7219,75.94295,0,0,0,0,100,0), -- 06:58:52
(@PATH,12,-5166.691,432.0739,76.86201,0,0,0,0,100,0), -- 06:58:55
(@PATH,13,-5163.314,446.5266,77.07475,0,0,0,0,100,0), -- 06:59:00
(@PATH,14,-5123.884,478.5325,80.71776,0,0,0,0,100,0), -- 06:59:04
(@PATH,15,-5110.585,482.2175,83.02201,0,0,0,0,100,0), -- 06:59:11
(@PATH,16,-5099.746,484.6776,83.24095,0,0,0,0,100,0), -- 06:59:16
(@PATH,17,-5067.211,481.675,84.28523,0,0,0,0,100,0), -- 06:59:20
(@PATH,18,-5042.09,468.0539,84.99848,0,0,0,0,100,0), -- 06:59:25
(@PATH,19,-5020.597,458.8485,87.52278,0,0,0,0,100,0), -- 06:59:28
(@PATH,20,-5014.573,456.4386,88.06664,0,0,0,0,100,0), -- 06:59:34
(@PATH,21,-4981.055,419.6735,87.5862,0,0,0,0,100,0), -- 06:59:39
(@PATH,22,-4971.752,413.9452,86.63638,0,0,0,0,100,0), -- 06:59:46
(@PATH,23,-4981.293,436.6361,87.37029,0,0,0,0,100,0), -- 06:59:48
(@PATH,24,-5000.16,465.5633,87.46753,0,0,0,0,100,0), -- 06:59:57
(@PATH,25,-5003.161,469.669,87.71191,0,0,0,0,100,0), -- 07:00:01
(@PATH,26,-5024.007,485.0092,86.62108,0,0,0,0,100,0), -- 07:00:05
(@PATH,27,-5052.383,491.6175,85.6012,0,0,0,0,100,0), -- 07:00:10
(@PATH,28,-5089.974,495.1535,84.65902,0,0,0,0,100,0), -- 07:00:15
(@PATH,29,-5131.202,491.5916,82.67003,0,0,0,0,100,0), -- 07:00:23
(@PATH,30,-5104.979,495.0316,84.09554,0,0,0,0,100,0), -- 07:00:24
(@PATH,31,-5136.438,490.7238,82.10683,0,0,0,0,100,0), -- 07:00:32
(@PATH,32,-5148.315,486.5536,80.46145,0,0,0,0,100,0), -- 07:00:36
(@PATH,33,-5176.314,497.1033,78.8902,0,0,0,0,100,0), -- 07:00:40
(@PATH,34,-5191.643,517.5717,76.7062,0,0,0,0,100,0), -- 07:00:46
(@PATH,35,-5209.542,551.1528,59.1912,0,0,0,0,100,0), -- 07:00:52
(@PATH,36,-5218.914,591.9361,58.3474,0,0,0,0,100,0), -- 07:01:01
(@PATH,37,-5216.641,622.2191,67.05342,0,0,0,0,100,0), -- 07:01:09
(@PATH,38,-5219.429,635.3921,68.57317,0,0,0,0,100,0), -- 07:01:16
(@PATH,39,-5219.883,633.0313,68.81996,0,0,0,0,100,0), -- 07:01:19
(@PATH,40,-5220.871,599.2662,61.02921,0,0,0,0,100,0), -- 07:01:21
(@PATH,41,-5218.937,565.3672,50.85265,0,0,0,0,100,0); -- 07:01:27
-- 0x1C09FC424015BB40000019000022140B .go -5218.906 565.3663 50.85233

-- Pathing for Dragonmaw Ascendant Entry: 22253 'TDB FORMAT' 
SET @NPC := 52277;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-4898.732,`position_y`=216.78,`position_z`=54.74985 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-4898.732,216.78,54.74985,0,0,0,0,100,0), -- 07:15:21
(@PATH,2,-4885.031,236.3208,52.61034,0,0,0,0,100,0), -- 07:15:29
(@PATH,3,-4889.695,229.7686,52.92027,0,0,0,0,100,0), -- 07:15:32
(@PATH,4,-4887.056,233.156,52.68503,0,0,0,0,100,0), -- 07:15:40
(@PATH,5,-4858.93,265.0389,48.16708,0,0,0,0,100,0), -- 07:15:41
(@PATH,6,-4851.827,284.8839,47.34936,0,0,0,0,100,0), -- 07:15:48
(@PATH,7,-4846.079,316.0757,55.46541,0,0,0,0,100,0), -- 07:15:54
(@PATH,8,-4843.175,349.7769,58.46518,0,0,0,0,100,0), -- 07:16:01
(@PATH,9,-4845.812,366.7672,60.97961,0,0,0,0,100,0), -- 07:16:07
(@PATH,10,-4856.089,402.1339,59.56307,0,0,0,0,100,0), -- 07:16:12
(@PATH,11,-4857.438,423.075,61.22576,0,0,0,0,100,0), -- 07:16:18
(@PATH,12,-4859.081,457.2928,64.90662,0,0,0,0,100,0), -- 07:16:25
(@PATH,13,-4846.12,505.6395,50.40051,0,0,0,0,100,0), -- 07:16:33
(@PATH,14,-4851.98,549.8719,48.70653,0,0,0,0,100,0), -- 07:16:40
(@PATH,15,-4878.309,576.0837,60.99225,0,0,0,0,100,0), -- 07:16:54
(@PATH,16,-4877.338,605.8702,68.93106,0,0,0,0,100,0), -- 07:17:02
(@PATH,17,-4879.686,577.7703,61.86221,0,0,0,0,100,0), -- 07:17:09
(@PATH,18,-4853.525,555.9883,49.47371,0,0,0,0,100,0), -- 07:17:14
(@PATH,19,-4845.978,509.1451,49.54256,0,0,0,0,100,0), -- 07:17:22
(@PATH,20,-4846.321,510.5673,48.53417,0,0,0,0,100,0), -- 07:17:35
(@PATH,21,-4846,508.4746,49.31151,0,0,0,0,100,0), -- 07:17:42
(@PATH,22,-4859.021,476.5473,64.16699,0,0,0,0,100,0), -- 07:17:43
(@PATH,23,-4857.8,436.0128,60.95083,0,0,0,0,100,0), -- 07:17:50
(@PATH,24,-4857.147,413.6607,60.26784,0,0,0,0,100,0), -- 07:17:58
(@PATH,25,-4848.22,378.149,60.79633,0,0,0,0,100,0), -- 07:18:04
(@PATH,26,-4843.683,354.1476,59.12819,0,0,0,0,100,0), -- 07:18:10
(@PATH,27,-4844.921,324.3129,56.56282,0,0,0,0,100,0), -- 07:18:15
(@PATH,28,-4848.563,297.3202,46.17633,0,0,0,0,100,0), -- 07:18:21
(@PATH,29,-4856.53,270.7361,47.4738,0,0,0,0,100,0), -- 07:18:28
(@PATH,30,-4881.715,240.4737,51.88027,0,0,0,0,100,0); -- 07:18:34
-- 0x1C09FC424015BB4000001900002230F5 .go -4898.732 216.78 54.74985

-- Pathing for Dragonmaw Ascendant Entry: 22253 'TDB FORMAT' 
SET @NPC := 52278;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5004.888,`position_y`=702.8807,`position_z`=82.04395 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5004.888,702.8807,82.04395,0,0,0,0,100,0), -- 07:09:09
(@PATH,2,-5011.663,699.3098,81.89692,0,0,0,0,100,0), -- 07:09:11
(@PATH,3,-5015.312,687.5909,82.03319,0,0,0,0,100,0), -- 07:09:13
(@PATH,4,-4996.903,700.0056,82.65056,0,0,0,0,100,0), -- 07:09:17
(@PATH,5,-4992.215,702.6887,83.10714,0,0,0,0,100,0), -- 07:09:19
(@PATH,6,-4969.132,707.9535,83.95985,0,0,0,0,100,0), -- 07:09:23
(@PATH,7,-4964.693,690.9923,83.32875,0,0,0,0,100,0), -- 07:09:25
(@PATH,8,-4954.07,677.088,77.76302,0,0,0,0,100,0), -- 07:09:29
(@PATH,9,-4949.576,659.408,77.40804,0,0,0,0,100,0), -- 07:09:34
(@PATH,10,-4960.746,641.1125,76.67274,0,0,0,0,100,0), -- 07:09:37
(@PATH,11,-4961.855,639.7071,77.21989,0,0,0,0,100,0), -- 07:09:43
(@PATH,12,-4956.266,612.0739,75.91876,0,0,0,0,100,0), -- 07:09:47
(@PATH,13,-4954.515,605.1003,75.18854,0,0,0,0,100,0), -- 07:09:51
(@PATH,14,-4956.737,589.0807,74.53506,0,0,0,0,100,0), -- 07:09:54
(@PATH,15,-4969.977,557.0493,76.5106,0,0,0,0,100,0), -- 07:09:59
(@PATH,16,-4988.75,549.4487,83.39151,0,0,0,0,100,0), -- 07:10:01
(@PATH,17,-4988.618,539.1655,83.00819,0,0,0,0,100,0), -- 07:10:05
(@PATH,18,-4981.907,532.507,78.12585,0,0,0,0,100,0), -- 07:10:07
(@PATH,19,-4959.939,531.2402,73.84925,0,0,0,0,100,0), -- 07:10:10
(@PATH,20,-4946.729,533.6745,66.42971,0,0,0,0,100,0), -- 07:10:15
(@PATH,21,-4926.818,538.8672,65.0467,0,0,0,0,100,0), -- 07:10:18
(@PATH,22,-4911.734,530.0341,55.14276,0,0,0,0,100,0), -- 07:10:22
(@PATH,23,-4898.571,547.2958,47.75196,0,0,0,0,100,0), -- 07:10:27
(@PATH,24,-4890.054,557.7857,57.1432,0,0,0,0,100,0), -- 07:10:33
(@PATH,25,-4876.696,566.1863,57.93503,0,0,0,0,100,0), -- 07:10:38
(@PATH,26,-4862.715,575.6901,52.22014,0,0,0,0,100,0), -- 07:10:40
(@PATH,27,-4858.512,594.1106,60.68968,0,0,0,0,100,0), -- 07:10:45
(@PATH,28,-4856.906,612.0919,65.71946,0,0,0,0,100,0), -- 07:10:49
(@PATH,29,-4854.059,628.2389,66.45804,0,0,0,0,100,0), -- 07:10:53
(@PATH,30,-4849.357,642.4513,59.23316,0,0,0,0,100,0), -- 07:10:56
(@PATH,31,-4839.23,658.6438,54.41743,0,0,0,0,100,0), -- 07:11:01
(@PATH,32,-4840.304,673.9675,51.38053,0,0,0,0,100,0), -- 07:11:05
(@PATH,33,-4849.471,676.6252,54.26706,0,0,0,0,100,0), -- 07:11:08
(@PATH,34,-4862.514,682.0897,59.79738,0,0,0,0,100,0), -- 07:11:10
(@PATH,35,-4880.908,688.1571,66.10199,0,0,0,0,100,0), -- 07:11:13
(@PATH,36,-4863.878,682.674,59.87488,0,0,0,0,100,0), -- 07:11:15
(@PATH,37,-4880.722,688.0911,66.16837,0,0,0,0,100,0), -- 07:11:22
(@PATH,38,-4896.763,688.6787,70.71627,0,0,0,0,100,0), -- 07:11:24
(@PATH,39,-4905.12,669.2037,74.99036,0,0,0,0,100,0), -- 07:11:28
(@PATH,40,-4907.025,659.6029,77.51676,0,0,0,0,100,0), -- 07:11:33
(@PATH,41,-4917.011,663.6454,73.60014,0,0,0,0,100,0), -- 07:11:35
(@PATH,42,-4927.575,673.5298,75.48451,0,0,0,0,100,0), -- 07:11:38
(@PATH,43,-4938.423,682.1601,78.2296,0,0,0,0,100,0), -- 07:11:41
(@PATH,44,-4954.518,695.4416,84.32332,0,0,0,0,100,0), -- 07:11:45
(@PATH,45,-4969.985,709.3942,83.46222,0,0,0,0,100,0), -- 07:11:51
(@PATH,46,-4971.432,710.7948,83.43773,0,0,0,0,100,0), -- 07:11:55
(@PATH,47,-4986.938,716.7153,82.9008,0,0,0,0,100,0); -- 07:11:58
-- 0x1C09FC424015BB4000001900002230F7 .go -5004.888 702.8807 82.04395

-- Pathing for Dragonmaw Ascendant Entry: 22253 'TDB FORMAT' 
SET @NPC := 52279;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5022.057,`position_y`=479.9312,`position_z`=87.00283 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5022.057,479.9312,87.00283,0,0,0,0,100,0), -- 20:22:29
(@PATH,2,-5014.553,472.7912,88.03943,0,0,0,0,100,0), -- 20:22:39
(@PATH,3,-4999.62,456.4922,87.46286,0,0,0,0,100,0), -- 20:22:47
(@PATH,4,-4967.545,406.6447,86.09462,0,0,0,0,100,0), -- 20:22:56
(@PATH,5,-4963.545,398.6447,85.84462,0,0,0,0,100,0), -- 20:22:56
(@PATH,6,-4966.199,380.3893,84.58515,0,0,0,0,100,0), -- 20:23:05
(@PATH,7,-4969.449,369.8893,84.33515,0,0,0,0,100,0), -- 20:23:05
(@PATH,8,-4971.571,363.7757,84.01563,0,0,0,0,100,0), -- 20:23:11
(@PATH,9,-4981.193,315.1064,82.50433,0,0,0,0,100,0), -- 20:23:18
(@PATH,10,-4982.943,308.6064,82.00433,0,0,0,0,100,0), -- 20:23:18
(@PATH,11,-4985.527,270.3568,80.93662,0,0,0,0,100,0), -- 20:23:31
(@PATH,12,-4984.912,261.6664,80.87724,0,0,0,0,100,0), -- 20:23:39
(@PATH,13,-4984.194,254.0232,80.98643,0,0,0,0,100,0), -- 20:23:41
(@PATH,14,-4983.671,226.0687,80.50131,0,0,0,0,100,0), -- 20:23:46
(@PATH,15,-5002.183,198.7367,80.73076,0,0,0,0,100,0), -- 20:23:54
(@PATH,16,-4997.445,147.227,79.09719,0,0,0,0,100,0), -- 20:24:01
(@PATH,17,-4996.195,142.477,78.59719,0,0,0,0,100,0), -- 20:24:01
(@PATH,18,-4996.078,134.5595,77.47847,0,0,0,0,100,0), -- 20:24:06
(@PATH,19,-4996.328,129.5595,76.97847,0,0,0,0,100,0), -- 20:24:06
(@PATH,20,-4996.578,121.8095,76.72847,0,0,0,0,100,0), -- 20:24:06
(@PATH,21,-4997.078,112.0595,75.97847,0,0,0,0,100,0), -- 20:24:06
(@PATH,22,-5003.599,85.19402,76.17677,0,0,0,0,100,0), -- 20:24:13
(@PATH,23,-5000.918,93.57802,75.89561,0,0,0,0,100,0), -- 20:24:18
(@PATH,24,-4996.32,127.891,76.83911,0,0,0,0,100,0), -- 20:24:21
(@PATH,25,-4996.07,133.891,77.33911,0,0,0,0,100,0), -- 20:24:21
(@PATH,26,-4995.82,139.891,78.08911,0,0,0,0,100,0), -- 20:24:21
(@PATH,27,-4997.385,146.7997,78.94779,0,0,0,0,100,0), -- 20:24:29
(@PATH,28,-4998.385,151.2997,79.44779,0,0,0,0,100,0), -- 20:24:29
(@PATH,29,-4999.885,157.0497,79.94779,0,0,0,0,100,0), -- 20:24:29
(@PATH,30,-5000.678,159.7069,80.21076,0,0,0,0,100,0), -- 20:24:32
(@PATH,31,-5002.248,199.0518,80.65829,0,0,0,0,100,0), -- 20:24:41
(@PATH,32,-4983.636,226.4841,80.61127,0,0,0,0,100,0), -- 20:24:47
(@PATH,33,-4986.27,283.0035,81.57057,0,0,0,0,100,0), -- 20:24:53
(@PATH,34,-4980.688,317.2732,82.73731,0,0,0,0,100,0), -- 20:25:02
(@PATH,35,-4979.188,322.0232,83.23731,0,0,0,0,100,0), -- 20:25:02
(@PATH,36,-4976.569,330.6879,83.80838,0,0,0,0,100,0), -- 20:25:09
(@PATH,37,-4964.715,384.6398,85.10558,0,0,0,0,100,0), -- 20:25:15
(@PATH,38,-4969.031,409.8725,86.30847,0,0,0,0,100,0), -- 20:25:22
(@PATH,39,-4975.031,422.3725,87.05847,0,0,0,0,100,0), -- 20:25:22
(@PATH,40,-5003.537,460.994,88.00166,0,0,0,0,100,0), -- 20:25:31
(@PATH,41,-5022.101,479.8282,87.23804,0,0,0,0,100,0), -- 20:25:39
(@PATH,42,-5029.75,486.7083,86.9541,0,0,0,0,100,0); -- 20:25:54
-- 0x1C09FC424015BB4000001A0000219932 .go -5022.057 479.9312 87.00283

-- Pathing for Dragonmaw Ascendant Entry: 22253 'TDB FORMAT' 
SET @NPC := 52280;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5210.222,`position_y`=418.9368,`position_z`=73.92104 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5210.222,418.9368,73.92104,0,0,0,0,100,0), -- 07:02:01
(@PATH,2,-5194.546,459.6038,74.90173,0,0,0,0,100,0), -- 07:02:06
(@PATH,3,-5198.185,476.6735,74.56579,0,0,0,0,100,0), -- 07:02:16
(@PATH,4,-5205.193,489.9176,74.52521,0,0,0,0,100,0), -- 07:02:20
(@PATH,5,-5205.922,514.9041,74.24827,0,0,0,0,100,0), -- 07:02:25
(@PATH,6,-5197.391,548.4199,71.05492,0,0,0,0,100,0), -- 07:02:30
(@PATH,7,-5202.769,580.7711,57.59827,0,0,0,0,100,0), -- 07:02:35
(@PATH,8,-5207.66,619.1582,66.18312,0,0,0,0,100,0), -- 07:02:42
(@PATH,9,-5203.323,643.3531,69.50911,0,0,0,0,100,0), -- 07:02:50
(@PATH,10,-5209.102,642.1717,68.62796,0,0,0,0,100,0), -- 07:02:54
(@PATH,11,-5223.636,616.6403,64.28975,0,0,0,0,100,0), -- 07:02:59
(@PATH,12,-5236.8,572.5868,43.20554,0,0,0,0,100,0), -- 07:03:04
(@PATH,13,-5230.435,558.9042,52.97427,0,0,0,0,100,0), -- 07:03:14
(@PATH,14,-5236.423,533.6864,54.42358,0,0,0,0,100,0), -- 07:03:25
(@PATH,15,-5257.124,507.9855,45.40817,0,0,0,0,100,0), -- 07:03:31
(@PATH,16,-5275.066,487.7511,39.84113,0,0,0,0,100,0), -- 07:03:38
(@PATH,17,-5276.403,465.4868,50.2813,0,0,0,0,100,0), -- 07:03:44
(@PATH,18,-5260.017,431.7862,58.83994,0,0,0,0,100,0), -- 07:03:49
(@PATH,19,-5264.36,398.4801,59.6331,0,0,0,0,100,0), -- 07:03:58
(@PATH,20,-5247.507,387.5706,65.87028,0,0,0,0,100,0), -- 07:04:05
(@PATH,21,-5218.22,394.0266,74.48222,0,0,0,0,100,0), -- 07:04:10
(@PATH,22,-5197.534,385.7352,72.49537,0,0,0,0,100,0), -- 07:04:17
(@PATH,23,-5194.736,383.3604,72.18273,0,0,0,0,100,0), -- 07:04:22
(@PATH,24,-5180.763,356.1179,72.43773,0,0,0,0,100,0), -- 07:04:28
(@PATH,25,-5175.956,317.8983,74.14841,0,0,0,0,100,0), -- 07:04:33
(@PATH,26,-5192.369,287.6161,72.80084,0,0,0,0,100,0), -- 07:04:36
(@PATH,27,-5215.688,268.9493,70.65274,0,0,0,0,100,0), -- 07:04:43
(@PATH,28,-5234.928,266.7101,71.72028,0,0,0,0,100,0), -- 07:04:50
(@PATH,29,-5261.104,267.6116,66.5541,0,0,0,0,100,0), -- 07:04:53
(@PATH,30,-5269.087,272.336,70.12495,0,0,0,0,100,0), -- 07:04:59
(@PATH,31,-5286.044,309.7126,70.90472,0,0,0,0,100,0), -- 07:05:03
(@PATH,32,-5281.2,352.0699,63.69888,0,0,0,0,100,0), -- 07:05:09
(@PATH,33,-5272.806,362.6875,62.99657,0,0,0,0,100,0), -- 07:05:19
(@PATH,34,-5246.281,400.4454,59.19219,0,0,0,0,100,0), -- 07:05:23
(@PATH,35,-5225.892,410.2588,65.93465,0,0,0,0,100,0); -- 07:05:31
-- 0x1C09FC424015BB4000001A0000216370 .go -5210.222 418.9368 73.92104

-- Pathing for Dragonmaw Ascendant Entry: 22253 'TDB FORMAT' 
SET @NPC := 52281;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5285.737,`position_y`=354.3048,`position_z`=58.63031 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5285.737,354.3048,58.63031,0,0,0,0,100,0), -- 19:31:06
(@PATH,2,-5294.725,316.1119,67.75787,0,0,0,0,100,0), -- 19:31:14
(@PATH,3,-5301.147,281.1097,59.07014,0,0,0,0,100,0), -- 19:31:23
(@PATH,4,-5304.806,249.8802,62.29091,0,0,0,0,100,0), -- 19:31:30
(@PATH,5,-5314.573,202.0623,63.99271,0,0,0,0,100,0), -- 19:31:37
(@PATH,6,-5314.016,154.8896,48.03545,0,0,0,0,100,0), -- 19:31:47
(@PATH,7,-5299.288,117.1861,34.29665,0,0,0,0,100,0), -- 19:31:57
(@PATH,8,-5306.702,135.3764,38.50175,0,0,0,0,100,0), -- 19:32:03
(@PATH,9,-5299.126,117.1948,34.29574,0,0,0,0,100,0), -- 19:32:10
(@PATH,10,-5283.754,81.68874,36.04304,0,0,0,0,100,0), -- 19:32:14
(@PATH,11,-5272.062,57.64223,42.34082,0,0,0,0,100,0), -- 19:32:21
(@PATH,12,-5264.497,27.00165,48.20856,0,0,0,0,100,0), -- 19:32:27
(@PATH,13,-5250.226,-6.593673,46.53293,0,0,0,0,100,0), -- 19:32:36
(@PATH,14,-5242.217,-36.79307,41.91159,0,0,0,0,100,0), -- 19:32:43
(@PATH,15,-5227.656,-66.75511,59.73492,0,0,0,0,100,0), -- 19:32:49
(@PATH,16,-5240.584,-40.47152,44.62254,0,0,0,0,100,0), -- 19:32:58
(@PATH,17,-5247.443,-12.82116,46.7327,0,0,0,0,100,0), -- 19:33:05
(@PATH,18,-5261.27,18.16552,48.98127,0,0,0,0,100,0), -- 19:33:12
(@PATH,19,-5270.131,51.50296,42.63126,0,0,0,0,100,0), -- 19:33:19
(@PATH,20,-5282.171,78.36816,34.01592,0,0,0,0,100,0), -- 19:33:27
(@PATH,21,-5295.439,108.8647,33.0154,0,0,0,0,100,0), -- 19:33:33
(@PATH,22,-5313.281,152.3893,47.28299,0,0,0,0,100,0), -- 19:33:41
(@PATH,23,-5315.114,198.1515,63.51984,0,0,0,0,100,0), -- 19:33:50
(@PATH,24,-5307.13,236.8966,62.42439,0,0,0,0,100,0), -- 19:34:00
(@PATH,25,-5301.88,277.6213,59.22523,0,0,0,0,100,0), -- 19:34:11
(@PATH,26,-5295.718,311.9755,66.89128,0,0,0,0,100,0), -- 19:34:18
(@PATH,27,-5300.28,287.5018,64.20296,0,0,0,0,100,0), -- 19:34:20
(@PATH,28,-5295.666,312.1795,67.10269,0,0,0,0,100,0), -- 19:34:28
(@PATH,29,-5286.51,351.3247,58.38956,0,0,0,0,100,0), -- 19:34:31
(@PATH,30,-5281.85,390.6465,55.83143,0,0,0,0,100,0), -- 19:34:41
(@PATH,31,-5273.968,437.0849,54.09414,0,0,0,0,100,0), -- 19:34:48
(@PATH,32,-5280.505,398.1873,55.13199,0,0,0,0,100,0); -- 19:35:01
-- 0x1C09FC424015BB4000001A0000240362 .go -5285.737 354.3048 58.63031

-- Pathing for Dragonmaw Ascendant Entry: 22253 'TDB FORMAT' 
SET @NPC := 52282;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5026.082,`position_y`=30.3253,`position_z`=78.81156 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5026.082,30.3253,78.81156,0,0,0,0,100,0), -- 19:59:18
(@PATH,2,-5044.674,33.37571,80.91895,0,0,0,0,100,0), -- 19:59:19
(@PATH,3,-5100.418,46.22721,80.36517,0,0,0,0,100,0), -- 19:59:25
(@PATH,4,-5120.707,43.68564,79.09943,0,0,0,0,100,0), -- 19:59:35
(@PATH,5,-5168.205,29.74817,77.34432,0,0,0,0,100,0), -- 19:59:41
(@PATH,6,-5187.383,4.068243,74.23724,0,0,0,0,100,0), -- 19:59:48
(@PATH,7,-5192.171,-27.60443,74.06621,0,0,0,0,100,0), -- 19:59:54
(@PATH,8,-5187.181,-39.73703,74.54796,0,0,0,0,100,0), -- 20:00:02
(@PATH,9,-5162.415,-82.17906,72.73651,0,0,0,0,100,0), -- 20:00:09
(@PATH,10,-5132.202,-120.9739,65.05319,0,0,0,0,100,0), -- 20:00:16
(@PATH,11,-5108.869,-123.2847,60.21478,0,0,0,0,100,0), -- 20:00:23
(@PATH,12,-5065.221,-116.5905,61.09086,0,0,0,0,100,0), -- 20:00:31
(@PATH,13,-5032.96,-83.59184,63.18661,0,0,0,0,100,0), -- 20:00:39
(@PATH,14,-5018.273,-72.75426,67.76162,0,0,0,0,100,0), -- 20:00:48
(@PATH,15,-5003.304,-38.36306,73.39491,0,0,0,0,100,0), -- 20:00:51
(@PATH,16,-4982.256,-5.512026,72.68662,0,0,0,0,100,0), -- 20:01:01
(@PATH,17,-4970.602,8.782578,71.2607,0,0,0,0,100,0), -- 20:01:08
(@PATH,18,-4956.99,19.62778,67.81738,0,0,0,0,100,0), -- 20:01:12
(@PATH,19,-4965.795,7.546585,69.8514,0,0,0,0,100,0), -- 20:01:16
(@PATH,20,-4973.835,-2.793668,71.32764,0,0,0,0,100,0), -- 20:01:19
(@PATH,21,-4995.399,-29.66144,72.97089,0,0,0,0,100,0), -- 20:01:23
(@PATH,22,-5000.069,-61.59894,66.50253,0,0,0,0,100,0), -- 20:01:30
(@PATH,23,-5007.126,-33.22968,75.18976,0,0,0,0,100,0), -- 20:01:36
(@PATH,24,-5014.227,5.722984,77.4781,0,0,0,0,100,0); -- 20:01:44
-- 0x1C09FC424015BB4000001A0000241AC7 .go -5026.082 30.3253 78.81156

-- Kill some database errors
DELETE FROM `creature_addon` WHERE `guid` IN (52306, 52317, 52312, 52303, 52296, 127436, 127437);
UPDATE `creature` SET `spawndist`=0 WHERE `guid`=52331;
UPDATE `creature` SET `spawndist`=0 WHERE `guid`=52330;

