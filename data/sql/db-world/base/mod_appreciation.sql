UPDATE `item_template` SET `subclass`=4, `name`='Certificate of Appreciation', `description`='May be used to give your character a level boost!', `Quality`=7, `Flags`=134217728, `ItemLevel`=1, `RequiredLevel`=0, `maxcount`=0, `dmg_min1`=0, `dmg_max1`=0, `bonding`=0 WHERE `entry`=20460;

SET @Entry := 6000000;

DELETE FROM `npc_text` WHERE `ID` BETWEEN @Entry AND @Entry+3;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@Entry, 'You don\'t have a certificate of appreciation! I can\'t help you unless you bring me one of those.'),
(@Entry+1, 'Which specialization would you like?'),
(@Entry+2, 'Are you absolutely certain you want to do this? I have to destroy all of your current equipment so make sure you save anything you don\'t want to lose!'),
(@Entry+3, 'Which continent would you like to unlock?');

DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `unit_flags`, `type`, `flags_extra`, `ScriptName`) VALUES
(@Entry, 21697, 'Ambert Mendenhall', 'Appreciation Assistant', 'Speak', 60, 60, 35, 1, 1, 2, 7, 16777218, 'npc_appreciation');

-- Adding translations for zhCN
DELETE FROM `npc_text_locale` WHERE `ID`=6000000 AND `Locale`='zhCN';
INSERT INTO `npc_text_locale` (`ID`, `Locale`, `Text0_0`, `Text0_1`, `Text1_0`, `Text1_1`, `Text2_0`, `Text2_1`, `Text3_0`, `Text3_1`, `Text4_0`, `Text4_1`, `Text5_0`, `Text5_1`, `Text6_0`, `Text6_1`, `Text7_0`, `Text7_1`) VALUES (6000000, 'zhCN', '你没有感谢证书！除非你给我带来一张，否则我无法帮助你。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `npc_text_locale` WHERE `ID`=6000001 AND `Locale`='zhCN';
INSERT INTO `npc_text_locale` (`ID`, `Locale`, `Text0_0`, `Text0_1`, `Text1_0`, `Text1_1`, `Text2_0`, `Text2_1`, `Text3_0`, `Text3_1`, `Text4_0`, `Text4_1`, `Text5_0`, `Text5_1`, `Text6_0`, `Text6_1`, `Text7_0`, `Text7_1`) VALUES (6000001, 'zhCN', '你想要哪个专业', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `npc_text_locale` WHERE `ID`=6000002 AND `Locale`='zhCN';
INSERT INTO `npc_text_locale` (`ID`, `Locale`, `Text0_0`, `Text0_1`, `Text1_0`, `Text1_1`, `Text2_0`, `Text2_1`, `Text3_0`, `Text3_1`, `Text4_0`, `Text4_1`, `Text5_0`, `Text5_1`, `Text6_0`, `Text6_1`, `Text7_0`, `Text7_1`) VALUES (6000002, 'zhCN', '你确定你要做这件事吗？我必须销毁你目前的所有设备，所以确保你保存你不想丢失的东西!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `npc_text_locale` WHERE `ID`=6000003 AND `Locale`='zhCN';
INSERT INTO `npc_text_locale` (`ID`, `Locale`, `Text0_0`, `Text0_1`, `Text1_0`, `Text1_1`, `Text2_0`, `Text2_1`, `Text3_0`, `Text3_1`, `Text4_0`, `Text4_1`, `Text5_0`, `Text5_1`, `Text6_0`, `Text6_1`, `Text7_0`, `Text7_1`) VALUES (6000003, 'zhCN', '你想要解锁哪个大陆？', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM `creature_template_locale` WHERE `entry`=6000000 AND `locale`='zhCN';
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (6000000, 'zhCN', '安伯特·门登霍尔', '感谢助手', 18019);

DELETE FROM `item_template_locale` WHERE `ID`=20460 AND `locale`='zhCN';
INSERT INTO `item_template_locale` (`ID`, `locale`, `Name`, `Description`, `VerifiedBuild`) VALUES (20460, 'zhCN', '感谢证书', '可以用来为你的角色提升等级！', 15050);
 
