DELETE FROM `creature_formations` WHERE `leaderGUID`=81531;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(81531, 81531, 0, 0, 1),
(81531, 81532, 2, 310, 2),
(81531, 81530, 2, 40, 2);

-- Pathing for Sul'lithuz Sandcrawler Entry: 8095 'TDB FORMAT' 
SET @NPC := 81531;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1843.703,`position_y`=1193.693,`position_z`=9.399462 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1843.703,1193.693,9.399462,0,0,0,0,100,0), -- 09:47:28
(@PATH,2,1853.01,1172.636,11.64427,0,0,0,0,100,0), -- 09:47:34
(@PATH,3,1866.308,1173.398,9.788191,0,0,0,0,100,0), -- 09:47:39
(@PATH,4,1872.583,1166.405,9.729328,0,0,0,0,100,0), -- 09:47:46
(@PATH,5,1871.299,1156.692,10.96628,0,0,0,0,100,0), -- 09:47:47
(@PATH,6,1871.138,1151.655,11.56361,0,0,0,0,100,0), -- 09:47:52
(@PATH,7,1868.171,1128.227,15.75623,0,0,0,0,100,0), -- 09:47:54
(@PATH,8,1867.59,1117.35,10.0786,0,0,0,0,100,0), -- 09:48:03
(@PATH,9,1867.531,1112.539,9.42872,0,0,0,0,100,0), -- 09:48:08
(@PATH,10,1869.916,1103.111,9.419256,0,0,0,0,100,0), -- 09:48:11
(@PATH,11,1885.483,1101.25,12.69302,0,0,0,0,100,0), -- 09:48:15
(@PATH,12,1895.659,1106.266,13.07423,0,0,0,0,100,0), -- 09:48:20
(@PATH,13,1899.068,1114.828,11.51437,0,0,0,0,100,0), -- 09:48:24
(@PATH,14,1897.243,1124.311,9.819095,0,0,0,0,100,0), -- 09:48:27
(@PATH,15,1895.536,1129.667,9.065989,0,0,0,0,100,0), -- 09:48:32
(@PATH,16,1892.813,1140.595,9.251789,0,0,0,0,100,0), -- 09:48:36
(@PATH,17,1895.494,1145.588,9.251789,0,0,0,0,100,0), -- 09:48:38
(@PATH,18,1912.283,1152.97,9.721882,0,0,0,0,100,0), -- 09:48:42
(@PATH,19,1918.871,1158.545,10.8794,0,0,0,0,100,0), -- 09:48:45
(@PATH,20,1920.596,1160.717,11.4007,0,0,0,0,100,0), -- 09:48:49
(@PATH,21,1918.562,1168.737,10.45978,0,0,0,0,100,0), -- 09:48:51
(@PATH,22,1911.641,1178.46,9.442093,0,0,0,0,100,0), -- 09:48:55
(@PATH,23,1909.036,1182.083,9.251789,0,0,0,0,100,0), -- 09:48:59
(@PATH,24,1902.43,1192.171,9.225698,0,0,0,0,100,0), -- 09:49:02
(@PATH,25,1901.362,1201.077,9.209784,0,0,0,0,100,0), -- 09:49:06
(@PATH,26,1904.497,1211.609,9.074608,0,0,0,0,100,0), -- 09:49:10
(@PATH,27,1909.629,1219.002,9.34004,0,0,0,0,100,0), -- 09:49:13
(@PATH,28,1893.508,1226.117,9.880462,0,0,0,0,100,0), -- 09:49:16
(@PATH,29,1882.001,1223.113,9.380271,0,0,0,0,100,0), -- 09:49:20
(@PATH,30,1874.822,1220.509,9.350756,0,0,0,0,100,0), -- 09:49:27
(@PATH,31,1857.651,1200.784,9.280435,0,0,0,0,100,0), -- 09:49:33
(@PATH,32,1856.005,1198.657,9.078081,0,0,0,0,100,0); -- 09:49:37
-- 0x1C16F41A2007E7C00020100000370E69 .go 1843.703 1193.693 9.399462

DELETE FROM `creature_formations` WHERE `leaderGUID`=81581;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(81581, 81581, 0, 0, 1),
(81581, 81583, 2, 310, 2),
(81581, 81582, 2, 40, 2);

-- Pathing for Sul'lithuz Sandcrawler Entry: 8095 'TDB FORMAT' 
SET @NPC := 81581;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1675.997,`position_y`=1232.113,`position_z`=8.987229 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1675.997,1232.113,8.987229,0,0,0,0,100,0), -- 09:41:26
(@PATH,2,1664.236,1222.652,9.116917,0,0,0,0,100,0), -- 09:41:35
(@PATH,3,1652.006,1213.038,9.562586,0,0,0,0,100,0), -- 09:41:42
(@PATH,4,1637.653,1203.694,9.001921,0,0,0,0,100,0), -- 09:41:48
(@PATH,5,1629.32,1192.027,9.076674,0,0,0,0,100,0), -- 09:41:52
(@PATH,6,1625.091,1172.658,10.96705,0,0,0,0,100,0), -- 09:41:57
(@PATH,7,1626.96,1164.297,9.917568,0,0,0,0,100,0), -- 09:42:02
(@PATH,8,1629.299,1156.629,9.361486,0,0,0,0,100,0), -- 09:42:07
(@PATH,9,1636.125,1149.019,9.258444,0,0,0,0,100,0), -- 09:42:11
(@PATH,10,1643.561,1144.494,9.247617,0,0,0,0,100,0), -- 09:42:13
(@PATH,11,1655.12,1139.766,9.255368,0,0,0,0,100,0), -- 09:42:18
(@PATH,12,1661.656,1140.804,9.253,0,0,0,0,100,0), -- 09:42:20
(@PATH,13,1668.802,1147.428,9.253811,0,0,0,0,100,0), -- 09:42:24
(@PATH,14,1676.315,1157.238,9.244503,0,0,0,0,100,0), -- 09:42:29
(@PATH,15,1685.79,1169.683,9.239374,0,0,0,0,100,0), -- 09:42:34
(@PATH,16,1692.607,1177.311,9.237229,0,0,0,0,100,0), -- 09:42:37
(@PATH,17,1699.878,1182.912,9.244503,0,0,0,0,100,0), -- 09:42:41
(@PATH,18,1713.954,1196.856,10.56152,0,0,0,0,100,0), -- 09:42:44
(@PATH,19,1723.85,1206.719,12.34495,0,0,0,0,100,0), -- 09:42:49
(@PATH,20,1727.292,1213.318,11.02762,0,0,0,0,100,0), -- 09:42:54
(@PATH,21,1729.919,1225.602,9.878916,0,0,0,0,100,0), -- 09:42:57
(@PATH,22,1731.314,1244.776,10.92413,0,0,0,0,100,0), -- 09:43:04
(@PATH,23,1728.812,1260.437,12.06071,0,0,0,0,100,0), -- 09:43:10
(@PATH,24,1727.822,1263.875,12.22826,0,0,0,0,100,0), -- 09:43:15
(@PATH,25,1711.478,1264.379,11.21737,0,0,0,0,100,0), -- 09:43:20
(@PATH,26,1713.401,1265.821,11.66045,0,0,0,0,100,0), -- 09:43:25
(@PATH,27,1716.675,1267.497,11.77379,0,0,0,0,100,0), -- 09:43:28
(@PATH,28,1729.911,1256.21,11.58052,0,0,0,0,100,0), -- 09:43:32
(@PATH,29,1731.174,1235.849,10.49311,0,0,0,0,100,0), -- 09:43:38
(@PATH,30,1731.024,1231.776,10.09937,0,0,0,0,100,0), -- 09:43:44
(@PATH,31,1725.16,1208.78,11.51352,0,0,0,0,100,0), -- 09:43:50
(@PATH,32,1720.919,1203.628,11.9393,0,0,0,0,100,0), -- 09:43:54
(@PATH,33,1709.198,1192.878,9.553079,0,0,0,0,100,0), -- 09:43:57
(@PATH,34,1706.149,1190.558,9.102777,0,0,0,0,100,0), -- 09:44:02
(@PATH,35,1699.551,1182.485,9.240244,0,0,0,0,100,0), -- 09:44:06
(@PATH,36,1692.22,1177.217,9.237229,0,0,0,0,100,0), -- 09:44:10
(@PATH,37,1685.667,1169.501,9.244503,0,0,0,0,100,0), -- 09:44:13
(@PATH,38,1675.968,1157.188,9.250818,0,0,0,0,100,0), -- 09:44:19
(@PATH,39,1668.579,1147.053,9.257448,0,0,0,0,100,0), -- 09:44:23
(@PATH,40,1661.406,1140.643,9.253025,0,0,0,0,100,0), -- 09:44:26
(@PATH,41,1655.021,1139.765,9.252222,0,0,0,0,100,0), -- 09:44:29
(@PATH,42,1643.208,1144.652,9.247617,0,0,0,0,100,0), -- 09:44:34
(@PATH,43,1635.916,1149.401,9.287905,0,0,0,0,100,0), -- 09:44:37
(@PATH,44,1626.234,1167.293,10.93676,0,0,0,0,100,0), -- 09:44:41
(@PATH,45,1623.834,1178.643,9.497221,0,0,0,0,100,0), -- 09:44:45
(@PATH,46,1623.34,1181.442,9.245241,0,0,0,0,100,0), -- 09:44:49
(@PATH,47,1629.774,1192.288,9.232269,0,0,0,0,100,0), -- 09:44:54
(@PATH,48,1637.901,1204.049,9.117538,0,0,0,0,100,0), -- 09:44:59
(@PATH,49,1652.142,1213.244,9.560089,0,0,0,0,100,0), -- 09:45:05
(@PATH,50,1664.489,1222.979,8.98844,0,0,0,0,100,0); -- 09:45:11
-- 0x1C16F41A2007E7C00020100000370E6A .go 1675.997 1232.113 8.987229

DELETE FROM `creature_formations` WHERE `leaderGUID`=81587;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(81587, 81587, 0, 0, 1),
(81587, 81601, 2, 310, 2),
(81587, 81588, 2, 40, 2);

-- Pathing for Sul'lithuz Sandcrawler Entry: 8095 'TDB FORMAT' 
SET @NPC := 81587;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1600.69,`position_y`=1126.462,`position_z`=12.41756 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1600.69,1126.462,12.41756,0,0,0,0,100,0), -- 09:39:21
(@PATH,2,1598.398,1122.63,11.59186,0,0,0,0,100,0), -- 09:39:26
(@PATH,3,1593.572,1109.275,10.02831,0,0,0,0,100,0), -- 09:39:30
(@PATH,4,1592.7,1107.054,9.462294,0,0,0,0,100,0), -- 09:39:33
(@PATH,5,1588.454,1097.563,9.271156,0,0,0,0,100,0), -- 09:39:38
(@PATH,6,1583.779,1087.09,9.251778,0,0,0,0,100,0), -- 09:39:42
(@PATH,7,1577.599,1072.18,9.251631,0,0,0,0,100,0), -- 09:39:48
(@PATH,8,1572.181,1059.509,9.217859,0,0,0,0,100,0), -- 09:39:53
(@PATH,9,1566.106,1048.195,9.189631,0,0,0,0,100,0), -- 09:39:58
(@PATH,10,1561.209,1038.885,9.217978,0,0,0,0,100,0), -- 09:40:01
(@PATH,11,1554.598,1029.24,9.240252,0,0,0,0,100,0), -- 09:40:05
(@PATH,12,1551.634,1018.51,9.219183,0,0,0,0,100,0), -- 09:40:10
(@PATH,13,1564.537,989.8197,10.66319,0,0,0,0,100,0), -- 09:40:17
(@PATH,14,1573.23,992.3699,9.814154,0,0,0,0,100,0), -- 09:40:23
(@PATH,15,1585.951,1004.943,9.409527,0,0,0,0,100,0), -- 09:40:32
(@PATH,16,1583.934,1017.611,9.291721,0,0,0,0,100,0), -- 09:40:36
(@PATH,17,1570.175,1035.014,9.251503,0,0,0,0,100,0), -- 09:40:45
(@PATH,18,1572.35,1046.109,9.251484,0,0,0,0,100,0), -- 09:40:48
(@PATH,19,1579.434,1059.837,9.251631,0,0,0,0,100,0), -- 09:40:55
(@PATH,20,1580.449,1072.369,9.251754,0,0,0,0,100,0), -- 09:40:59
(@PATH,21,1584.936,1085.009,9.251778,0,0,0,0,100,0), -- 09:41:04
(@PATH,22,1588.972,1094.886,9.251778,0,0,0,0,100,0), -- 09:41:08
(@PATH,23,1596.379,1107.74,9.251778,0,0,0,0,100,0), -- 09:41:13
(@PATH,24,1603.914,1114.008,9.251778,0,0,0,0,100,0), -- 09:41:16
(@PATH,25,1613.207,1117.757,9.251778,0,0,0,0,100,0), -- 09:41:20
(@PATH,26,1622.645,1121.169,9.251778,0,0,0,0,100,0), -- 09:41:24
(@PATH,27,1626.143,1131.002,9.106209,0,0,0,0,100,0), -- 09:41:27
(@PATH,28,1613.163,1134.797,10.02532,0,0,0,0,100,0); -- 09:41:31
-- 0x1C16F41A2007E7C00020100000B70E69 .go 1600.69 1126.462 12.41756

-- Pathing for Sandfury Blood Drinker Entry: 5649 'TDB FORMAT' 
SET @NPC := 45709;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1617.601,`position_y`=983.7964,`position_z`=9.916536 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1617.601,983.7964,9.916536,0,0,0,0,100,0), -- 09:32:38
(@PATH,2,1633.528,955.7834,9.235924,0,0,0,0,100,0), -- 09:32:59
(@PATH,3,1648.17,936.5194,9.250045,0,0,0,0,100,0), -- 09:33:09
(@PATH,4,1676.1,915.9411,9.25178,0,0,0,0,100,0), -- 09:33:22
(@PATH,5,1688.716,903.3527,9.251783,0,0,0,0,100,0), -- 09:33:29
(@PATH,6,1688.836,903.3895,9.001781,0,0,0,0,100,0), -- 09:33:39
(@PATH,7,1688.783,903.5739,9.251781,0,0,0,0,100,0), -- 09:33:45
(@PATH,8,1675.767,916.0085,9.251778,0,0,0,0,100,0), -- 09:33:52
(@PATH,9,1647.774,936.6549,9.231987,0,0,0,0,100,0), -- 09:34:05
(@PATH,10,1633.304,956.1119,9.007839,0,0,0,0,100,0); -- 09:34:15
-- 0x1C16F41A200584400020100000B70E69 .go 1617.601 983.7964 9.916536

DELETE FROM `creature_formations` WHERE `leaderGUID`=44170;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(44170, 44170, 0, 0, 1),
(44170, 44177, 4, 0, 2);

-- Pathing for Sandfury Shadowhunter Entry: 7246 'TDB FORMAT' 
SET @NPC := 44170;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1655.273,`position_y`=905.2343,`position_z`=9.25178 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1655.273,905.2343,9.25178,0,0,0,0,100,0), -- 09:33:10
(@PATH,2,1655.911,899.7297,9.251781,0,0,0,0,100,0), -- 09:33:13
(@PATH,3,1659.89,895.1904,9.251783,0,0,0,0,100,0), -- 09:33:15
(@PATH,4,1666.527,892.6587,9.251785,0,0,0,0,100,0), -- 09:33:19
(@PATH,5,1671.451,893.4264,9.251785,0,0,0,0,100,0), -- 09:33:20
(@PATH,6,1677.89,896.6896,9.251787,0,0,0,0,100,0), -- 09:33:24
(@PATH,7,1682.431,897.1668,9.251787,0,0,0,0,100,0), -- 09:33:25
(@PATH,8,1687.213,895.057,9.251787,0,0,0,0,100,0), -- 09:33:27
(@PATH,9,1691.418,891.8385,9.251787,0,0,0,0,100,0), -- 09:33:30
(@PATH,10,1707.106,892.9658,9.001792,0,0,0,0,100,0), -- 09:33:35
(@PATH,11,1707.17,893.1018,9.251791,0,0,0,0,100,0), -- 09:33:37
(@PATH,12,1707.188,899.764,9.251793,0,0,0,0,100,0), -- 09:33:41
(@PATH,13,1705.826,907.7333,9.051537,0,0,0,0,100,0), -- 09:33:43
(@PATH,14,1696.466,915.4108,10.69149,0,0,0,0,100,0), -- 09:33:45
(@PATH,15,1695.094,916.186,11.46166,0,0,0,0,100,0), -- 09:33:49
(@PATH,16,1684.856,919.5836,10.99732,0,0,0,0,100,0), -- 09:33:51
(@PATH,17,1683.066,920.494,10.5781,0,0,0,0,100,0), -- 09:33:54
(@PATH,18,1674.156,923.7375,10.20567,0,0,0,0,100,0), -- 09:33:57
(@PATH,19,1664.302,928.6282,9.453308,0,0,0,0,100,0), -- 09:34:00
(@PATH,20,1661.029,929.8394,9.146419,0,0,0,0,100,0), -- 09:34:04
(@PATH,21,1655.01,926.2007,9.26087,0,0,0,0,100,0), -- 09:34:07
(@PATH,22,1652.682,919.4923,9.257462,0,0,0,0,100,0), -- 09:34:10
(@PATH,23,1651.4,910.429,9.254412,0,0,0,0,100,0), -- 09:34:13
(@PATH,24,1647.536,904.8036,9.126776,0,0,0,0,100,0), -- 09:34:16
(@PATH,25,1644.714,900.452,9.315964,0,0,0,0,100,0), -- 09:34:18
(@PATH,26,1643.629,893.2144,9.066956,0,0,0,0,100,0), -- 09:34:21
(@PATH,27,1647.002,888.5004,9.251783,0,0,0,0,100,0), -- 09:34:23
(@PATH,28,1653.137,885.6685,9.281507,0,0,0,0,100,0), -- 09:34:26
(@PATH,29,1662.074,885.7325,10.57716,0,0,0,0,100,0), -- 09:34:29
(@PATH,30,1671.613,886.2659,10.16994,0,0,0,0,100,0), -- 09:34:32
(@PATH,31,1674.008,886.346,9.495081,0,0,0,0,100,0), -- 09:34:35
(@PATH,32,1681.862,881.2953,9.280839,0,0,0,0,100,0), -- 09:34:39
(@PATH,33,1685.906,877.4709,9.251787,0,0,0,0,100,0), -- 09:34:41
(@PATH,34,1691.133,874.519,9.251787,0,0,0,0,100,0), -- 09:34:44
(@PATH,35,1698.035,875.4692,9.251789,0,0,0,0,100,0), -- 09:34:46
(@PATH,36,1701.057,884.8716,9.251791,0,0,0,0,100,0), -- 09:34:50
(@PATH,37,1700.372,888.9851,9.251789,0,0,0,0,100,0), -- 09:34:52
(@PATH,38,1697.707,894.2527,9.251787,0,0,0,0,100,0), -- 09:34:55
(@PATH,39,1695.577,900.1669,9.251783,0,0,0,0,100,0), -- 09:34:57
(@PATH,40,1691.47,905.3853,9.251781,0,0,0,0,100,0), -- 09:34:59
(@PATH,41,1685.541,907.8835,9.251781,0,0,0,0,100,0), -- 09:35:02
(@PATH,42,1677.038,912.5565,9.251781,0,0,0,0,100,0), -- 09:35:06
(@PATH,43,1673.069,915.2619,9.251778,0,0,0,0,100,0), -- 09:35:08
(@PATH,44,1663.253,918.3373,9.251777,0,0,0,0,100,0), -- 09:35:12
(@PATH,45,1657.931,912.8817,9.251776,0,0,0,0,100,0); -- 09:35:15
-- 0x1C16F41A200713800020100003B70E69 .go 1655.273 905.2343 9.25178

UPDATE `creature` SET `id`=7246 WHERE `guid`=81449;

-- Pathing for Sandfury Shadowhunter Entry: 7246 'TDB FORMAT' 
SET @NPC := 81449;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1714.547,`position_y`=751.6357,`position_z`=31.01397 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1714.547,751.6357,31.01397,0,0,0,0,100,0), -- 09:33:36
(@PATH,2,1706.419,767.5251,20.53269,0,0,0,0,100,0), -- 09:33:47
(@PATH,3,1713.905,783.2459,18.27732,0,0,0,0,100,0), -- 09:33:56
(@PATH,4,1736.666,804.5889,19.37791,0,0,0,0,100,0), -- 09:34:06
(@PATH,5,1756.694,816.8251,17.76507,0,0,0,0,100,0), -- 09:34:16
(@PATH,6,1777.771,811.2102,24.82411,0,0,0,0,100,0), -- 09:34:28
(@PATH,7,1798.088,809.4211,17.09367,0,0,0,0,100,0), -- 09:34:38
(@PATH,8,1799.94,798.6746,14.59042,0,0,0,0,100,0), -- 09:34:46
(@PATH,9,1796.858,772.2805,14.40658,0,0,0,0,100,0), -- 09:34:55
(@PATH,10,1795.703,767.491,14.4094,0,0,0,0,100,0), -- 09:35:03
(@PATH,11,1783.244,740.9023,16.0862,0,0,0,0,100,0), -- 09:35:12
(@PATH,12,1753.258,723.8399,20.43831,0,0,0,0,100,0), -- 09:35:20
(@PATH,13,1739.673,704.8474,24.96986,0,0,0,0,100,0), -- 09:35:30
(@PATH,14,1732.086,695.3857,29.82811,0,0,0,0,100,0), -- 09:35:41
(@PATH,15,1730.985,682.3048,37.22635,0,0,0,0,100,0), -- 09:35:46
(@PATH,16,1730.52,664.7642,46.17672,0,0,0,0,100,0), -- 09:35:52
(@PATH,17,1730.83,680.5409,37.68767,0,0,0,0,100,0), -- 09:36:01
(@PATH,18,1730.119,692.5168,32.08631,0,0,0,0,100,0), -- 09:36:09
(@PATH,19,1737.599,702.1305,26.13027,0,0,0,0,100,0), -- 09:36:14
(@PATH,20,1749.973,719.9585,21.75875,0,0,0,0,100,0), -- 09:36:18
(@PATH,21,1770.449,731.5471,16.75012,0,0,0,0,100,0), -- 09:36:29
(@PATH,22,1787.836,744.8066,15.48635,0,0,0,0,100,0), -- 09:36:39
(@PATH,23,1790.129,746.8105,14.82397,0,0,0,0,100,0), -- 09:36:48
(@PATH,24,1800.35,786.1299,15.01233,0,0,0,0,100,0), -- 09:36:56
(@PATH,25,1799.381,808.5591,16.25235,0,0,0,0,100,0), -- 09:37:05
(@PATH,26,1784.557,809.4543,26.70631,0,0,0,0,100,0), -- 09:37:13
(@PATH,27,1768.491,817.0541,16.94501,0,0,0,0,100,0), -- 09:37:22
(@PATH,28,1740.522,807.2539,18.77644,0,0,0,0,100,0), -- 09:37:32
(@PATH,29,1719.27,792.5435,17.62323,0,0,0,0,100,0), -- 09:37:44
(@PATH,30,1707.021,770.4479,18.85983,0,0,0,0,100,0); -- 09:37:53
-- 0x1C16F41A200713800020100003B70E6B .go 1714.547 751.6357 31.01397

-- Pathing for Hydromancer Velratha Entry: 7795 'TDB FORMAT' 
SET @NPC := 81570;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1680.114,`position_y`=1177.732,`position_z`=8.987229 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1680.114,1177.732,8.987229,2.303835,0,0,0,100,0), -- 09:34:01
(@PATH,2,1700.927,1195.028,9.603146,0,0,0,0,100,0), -- 09:34:01
(@PATH,3,1707.2,1200.687,9.403647,0,0,0,0,100,0), -- 09:34:14
(@PATH,4,1692.938,1213.952,8.987229,3.909538,0,0,0,100,0), -- 09:34:23
(@PATH,5,1680.51,1225.099,8.987229,0,0,0,0,100,0), -- 09:34:42
(@PATH,6,1680.468,1225.099,9.265305,0,0,0,0,100,0), -- 09:34:48
(@PATH,7,1660.3,1205.108,9.04338,5.5676,0,0,0,100,0), -- 09:35:00
(@PATH,8,1681.249,1229.22,8.987229,0,0,0,0,100,0), -- 09:35:00
(@PATH,9,1701.589,1207.354,9.564609,0,0,0,0,100,0), -- 09:35:12
(@PATH,10,1694.085,1190.304,9.394554,0,0,0,0,100,0); -- 09:35:27
-- 0x1C16F41A20079CC00020100000370E68 .go 1680.114 1177.732 8.987229

UPDATE `creature` SET `id`=5650 WHERE `guid`=81575;
UPDATE `creature` SET `id`=5649 WHERE `guid`=81623;

-- Pathing for Sandfury Blood Drinker Entry: 5649 'TDB FORMAT' 
SET @NPC := 81623;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1467.867,`position_y`=814.7855,`position_z`=9.265823 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1467.867,814.7855,9.265823,0,0,0,0,100,0), -- 09:33:47
(@PATH,2,1487.211,800.545,9.218481,0,0,0,0,100,0), -- 09:33:56
(@PATH,3,1511.808,811.0946,9.178488,0,0,0,0,100,0), -- 09:34:07
(@PATH,4,1515.796,829.2292,9.161482,0,0,0,0,100,0), -- 09:34:16
(@PATH,5,1536.178,831.7927,8.960844,0,0,0,0,100,0), -- 09:34:23
(@PATH,6,1571.074,854.2294,9.261095,0,0,0,0,100,0), -- 09:34:40
(@PATH,7,1591.516,871.9385,9.265827,0,0,0,0,100,0), -- 09:34:51
(@PATH,8,1607.848,876.8568,9.265826,0,0,0,0,100,0), -- 09:34:58
(@PATH,9,1607.711,876.7318,9.015826,0,0,0,0,100,0), -- 09:35:10
(@PATH,10,1607.748,876.855,9.265827,0,0,0,0,100,0), -- 09:35:19
(@PATH,11,1591.351,871.8887,9.265827,0,0,0,0,100,0), -- 09:35:26
(@PATH,12,1570.754,854.1002,9.208826,0,0,0,0,100,0), -- 09:35:37
(@PATH,13,1535.719,831.4611,9.164757,0,0,0,0,100,0), -- 09:35:54
(@PATH,14,1515.512,828.9963,9.170406,0,0,0,0,100,0), -- 09:36:03
(@PATH,15,1511.881,810.6445,8.968481,0,0,0,0,100,0), -- 09:36:10
(@PATH,16,1486.829,800.4541,9.261948,0,0,0,0,100,0); -- 09:36:21
-- 0x1C16F41A200584400020100004370E69 .go 1467.867 814.7855 9.265823

-- Update spawn distance & movementype so they move around randomly
UPDATE `creature` SET `spawndist`=10, `MovementType`=1 WHERE `guid` IN (81566, 81569, 81580, 81568, 81597, 81598, 81539, 81538, 81542, 81548, 81551, 45710, 81482, 81517, 81515, 81518, 81468, 81452, 81579, 81460, 81461, 81512, 81516);

UPDATE `creature` SET `id`=5650 WHERE `guid`=81578;

-- Pathing for Sandfury Witch Doctor Entry: 5650 'TDB FORMAT' 
SET @NPC := 81578;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1676.368,`position_y`=1157.151,`position_z`=9.249697 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1676.368,1157.151,9.249697,0,0,0,0,100,0), -- 13:40:40
(@PATH,2,1653.736,1135.86,9.245178,0,0,0,0,100,0), -- 13:40:52
(@PATH,3,1626.023,1177.506,9.271156,0,0,0,0,100,0), -- 13:41:05
(@PATH,4,1625.849,1178.628,9.327552,0,0,0,0,100,0), -- 13:41:14
(@PATH,5,1641.739,1209.753,9.657928,0,0,0,0,100,0), -- 13:41:25
(@PATH,6,1681.225,1250.528,10.47596,0,0,0,0,100,0), -- 13:41:38
(@PATH,7,1696.953,1250.462,10.17584,0,0,0,0,100,0), -- 13:41:54
(@PATH,8,1714.498,1240.271,9.738787,0,0,0,0,100,0), -- 13:42:06
(@PATH,9,1717.624,1219.73,9.457044,0,0,0,0,100,0), -- 13:42:15
(@PATH,10,1704.706,1187.339,9.265233,0,0,0,0,100,0); -- 13:42:29
-- 0x1C16F41A2005848000491D0001B743F7 .go 1676.368 1157.151 9.249697

-- Pathing for Sandfury Witch Doctor Entry: 5650 'TDB FORMAT' 
SET @NPC := 81526;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1879.829,`position_y`=1016.147,`position_z`=9.251789 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1879.829,1016.147,9.251789,0,0,0,0,100,0), -- 13:59:01
(@PATH,2,1866.291,1028.589,9.251736,0,0,0,0,100,0), -- 13:59:23
(@PATH,3,1853.719,1035.176,9.251698,0,0,0,0,100,0), -- 13:59:28
(@PATH,4,1847.862,1044.768,9.251684,0,0,0,0,100,0), -- 13:59:33
(@PATH,5,1853.86,1062.672,9.252108,0,0,0,0,100,0), -- 13:59:40
(@PATH,6,1870.639,1091.271,9.252114,0,0,0,0,100,0), -- 13:59:53
(@PATH,7,1875.563,1107.849,9.25185,0,0,0,0,100,0), -- 14:00:00
(@PATH,8,1890.563,1129.902,9.251789,0,0,0,0,100,0), -- 14:00:11
(@PATH,9,1888.277,1155.863,9.251789,0,0,0,0,100,0), -- 14:00:21
(@PATH,10,1895.958,1173.92,9.251789,0,0,0,0,100,0), -- 14:00:30
(@PATH,11,1903.501,1197.795,9.251789,0,0,0,0,100,0), -- 14:00:39
(@PATH,12,1899.594,1215.067,9.227224,0,0,0,0,100,0), -- 14:00:47
(@PATH,13,1899.237,1214.72,9.001789,0,0,0,0,100,0), -- 14:00:57
(@PATH,14,1899.508,1214.759,9.285032,0,0,0,0,100,0), -- 14:01:05
(@PATH,15,1903.433,1197.489,9.251789,0,0,0,0,100,0), -- 14:01:12
(@PATH,16,1895.648,1173.515,9.251789,0,0,0,0,100,0), -- 14:01:22
(@PATH,17,1888.245,1155.736,9.251789,0,0,0,0,100,0), -- 14:01:30
(@PATH,18,1890.73,1129.828,9.25179,0,0,0,0,100,0), -- 14:01:40
(@PATH,19,1875.201,1107.714,9.25216,0,0,0,0,100,0), -- 14:01:51
(@PATH,20,1870.43,1091.029,9.252037,0,0,0,0,100,0), -- 14:01:58
(@PATH,21,1853.549,1062.582,9.251722,0,0,0,0,100,0), -- 14:02:12
(@PATH,22,1847.7,1044.523,9.251684,0,0,0,0,100,0), -- 14:02:19
(@PATH,23,1853.871,1034.924,9.251736,0,0,0,0,100,0), -- 14:02:24
(@PATH,24,1866.429,1028.186,9.251782,0,0,0,0,100,0); -- 14:02:30
-- 0x1C16F41A2005848000491D0001B743F4 .go 1879.829 1016.147 9.251789

UPDATE `creature` SET `id`=5649 WHERE `guid`=81505;

-- Pathing for Sandfury Blood Drinker Entry: 5649 'TDB FORMAT' 
SET @NPC := 81505;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1822.724,`position_y`=914.1884,`position_z`=9.001788 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1822.724,914.1884,9.001788,0,0,0,0,100,0), -- 13:59:35
(@PATH,2,1829.56,924.1556,9.251788,0,0,0,0,100,0), -- 13:59:41
(@PATH,3,1837.984,936.5698,9.251788,0,0,0,0,100,0), -- 13:59:47
(@PATH,4,1844.23,947.9322,9.251788,0,0,0,0,100,0), -- 13:59:53
(@PATH,5,1853.508,963.5331,9.251788,0,0,0,0,100,0), -- 14:00:00
(@PATH,6,1858.897,971.714,9.251788,0,0,0,0,100,0), -- 14:00:04
(@PATH,7,1862.767,977.868,9.251788,0,0,0,0,100,0), -- 14:00:06
(@PATH,8,1862.533,977.6647,9.001788,0,0,0,0,100,0), -- 14:00:13
(@PATH,9,1862.49,977.5964,9.251788,0,0,0,0,100,0), -- 14:00:17
(@PATH,10,1858.673,971.532,9.251788,0,0,0,0,100,0), -- 14:00:19
(@PATH,11,1853.258,963.3405,9.251788,0,0,0,0,100,0), -- 14:00:24
(@PATH,12,1844.16,947.6928,9.251788,0,0,0,0,100,0), -- 14:00:32
(@PATH,13,1837.749,936.4601,9.251788,0,0,0,0,100,0), -- 14:00:36
(@PATH,14,1829.292,923.94,9.251788,0,0,0,0,100,0); -- 14:00:43
-- 0x1C16F41A2005844000491D00033743F5 .go 1822.724 914.1884 9.001788
