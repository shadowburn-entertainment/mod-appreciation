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

DELETE FROM `creature` WHERE `id1`=@Entry;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@Entry, 0, -8877.62, 633.311, 96.0921, 6.06048),
(@Entry, 1, 1736.17, -4332.46, 30.4142, 3.14391),
(@Entry, 571, 5816.8, 622.221, 647.66, 1.73032);
