ALTER TABLE db_version CHANGE COLUMN required_c12763_01_mangos_playercreateinfo_action required_c12813_01_mangos_creature_template bit;

-- Rename and add new field to prepare upcoming patch

RENAME TABLE creature_template TO creature_template_old;
CREATE TABLE `creature_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Name` char(100) NOT NULL DEFAULT '',
  `SubName` char(100) DEFAULT NULL,
  `IconName` char(100) DEFAULT NULL,
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `MaxLevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `DifficultyEntry1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `DifficultyEntry2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `DifficultyEntry3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `FactionAlliance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FactionHorde` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Scale` float NOT NULL DEFAULT '1',
  `Family` tinyint(4) NOT NULL DEFAULT '0',
  `CreatureType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InhabitType` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `RegenerateHealth` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `RacialLeader` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `NpcFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `UnitFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `UnitFlags2` int(10) unsigned NOT NULL DEFAULT '0',
  `DynamicFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtraFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureTypeFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `SpeedWalk` float NOT NULL DEFAULT '1' COMMENT 'Result of 2.5/2.5, most common value',
  `SpeedRun` float NOT NULL DEFAULT '1.14286' COMMENT 'Result of 8.0/7.0, most common value',
  `UnitClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Expansion` tinyint(3) NOT NULL DEFAULT '-1',
  `HealthMultiplier` float NOT NULL DEFAULT '1',
  `ManaMultiplier` float NOT NULL DEFAULT '1',
  `DamageMultiplier` float NOT NULL DEFAULT '1',
  `DamageVariance` float NOT NULL DEFAULT '1',
  `ArmorMultiplier` float NOT NULL DEFAULT '1',
  `ExperienceMultiplier` float NOT NULL DEFAULT '1',
  `MinLevelHealth` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevelHealth` int(10) unsigned NOT NULL DEFAULT '0',
  `MinLevelMana` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevelMana` int(10) unsigned NOT NULL DEFAULT '0',
  `MinMeleeDmg` float NOT NULL DEFAULT '0',
  `MaxMeleeDmg` float NOT NULL DEFAULT '0',
  `MinRangedDmg` float NOT NULL DEFAULT '0',
  `MaxRangedDmg` float NOT NULL DEFAULT '0',
  `Armor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MeleeAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `RangedAttackPower` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MeleeBaseAttackTime` int(10) unsigned NOT NULL DEFAULT '0',
  `RangedBaseAttackTime` int(10) unsigned NOT NULL DEFAULT '0',
  `DamageSchool` tinyint(4) NOT NULL DEFAULT '0',
  `MinLootGold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MaxLootGold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `LootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PickpocketLootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SkinningLootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `KillCredit1` int(11) unsigned NOT NULL DEFAULT '0',
  `KillCredit2` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem1` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem2` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem3` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem4` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem5` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem6` int(11) unsigned NOT NULL DEFAULT '0',
  `MechanicImmuneMask` int(10) unsigned NOT NULL DEFAULT '0',
  `ResistanceHoly` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceFire` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceNature` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceFrost` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceShadow` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceArcane` smallint(5) NOT NULL DEFAULT '0',
  `PetSpellDataId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MovementTemplateId` int(11) unsigned NOT NULL DEFAULT '0',
  `TrainerType` tinyint(4) NOT NULL DEFAULT '0',
  `TrainerSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `TrainerClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TrainerRace` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TrainerTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `VendorTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `EquipmentTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `VehicleTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `GossipMenuId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `AIName` char(64) NOT NULL DEFAULT '',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `IconName`, `MinLevel`, `MaxLevel`, `DifficultyEntry1`, `DifficultyEntry2`, `DifficultyEntry3`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`,
  `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateHealth`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `UnitFlags2`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`,
  `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `ManaMultiplier`, `DamageMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`,
  `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`,
  `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `MechanicImmuneMask`,
  `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `MovementTemplateId`, `TrainerType`, `TrainerSpell`,
  `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `EquipmentTemplateId`, `VehicleTemplateId`, `GossipMenuId`, `AIName`, `ScriptName`)
SELECT `entry`, `name`, `subname`, `iconname`, `minlevel`, `maxlevel`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`,
  `faction_A`, `faction_H`, `scale`, `family`, `type`, `InhabitType`, `RegenHealth`, `RacialLeader`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`, `flags_extra`, `type_flags`,
  `speed_walk`, `speed_run`, `unit_class`, `rank`, `unk16`, `unk17`, `dmg_multiplier`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `minDmg`, `maxdmg`,
  `minrangedmg`, `maxrangedmg`, `armor`, `attackpower`, `rangedattackpower`, `baseattacktime`, `rangeattacktime`, `dmgschool`, `mingold`, `maxgold`,
  `lootid`, `pickpocketloot`, `skinloot`, `KillCredit1`, `KillCredit2`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`,
  `mechanic_immune_mask`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `PetSpellDataId`, `MovementType`, `movementId`, `trainer_type`, `trainer_spell`,
  `trainer_class`, `trainer_race`, `trainer_id`, `vendor_id`, `equipment_id`, `vehicle_id`, `gossip_menu_id`, `AIName`, `ScriptName`
FROM `creature_template_old` ORDER BY `entry`;

DROP TABLE `creature_template_old`;

ALTER TABLE db_version CHANGE COLUMN required_c12813_01_mangos_creature_template required_c12815_01_mangos_creature_template_classlevelstats bit;

DROP TABLE IF EXISTS `creature_template_classlevelstats`;

CREATE TABLE `creature_template_classlevelstats` (
  `Level` tinyint(4) NOT NULL,
  `Class` tinyint(4) NOT NULL,
  `BaseHealthExp0` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseHealthExp1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseHealthExp2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseHealthExp3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseMana` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseDamageExp0` float NOT NULL DEFAULT '0',
  `BaseDamageExp1` float NOT NULL DEFAULT '0',
  `BaseDamageExp2` float NOT NULL DEFAULT '0',
  `BaseDamageExp3` float NOT NULL DEFAULT '0',
  `BaseMeleeAttackPower` float NOT NULL DEFAULT '0',
  `BaseRangedAttackPower` float NOT NULL DEFAULT '0',
  `BaseArmor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Level`,`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


# SD2_3000
UPDATE creature_template SET ScriptName='npc_rethhedron' WHERE entry=22357;
UPDATE creature_template SET ScriptName='npc_drijya' WHERE entry=20281;
UPDATE creature_template SET ScriptName='npc_firecrackers_bunny' WHERE entry=24230;
UPDATE creature_template SET ScriptName='npc_ghoul_feeding_bunny' WHERE entry=28591;
UPDATE creature_template SET ScriptName='npc_decaying_ghoul' WHERE entry=28565;
UPDATE creature_template SET ScriptName='npc_scourged_flamespitter' WHERE entry=25582;
UPDATE creature_template SET ScriptName='npc_anchorite_barada' WHERE entry=22431;
UPDATE creature_template SET ScriptName='npc_colonel_jules' WHERE entry=22432;
UPDATE creature_template SET ScriptName='npc_dorius_stonetender' WHERE entry=8284;
UPDATE creature_template SET ScriptName='npc_fhwoor' WHERE entry=17877;
UPDATE creature_template SET ScriptName='npc_nagrand_captive' WHERE entry IN (18209,18210);
UPDATE creature_template SET ScriptName="npc_skyguard_prisoner" WHERE entry=23383;
UPDATE creature_template SET ScriptName='npc_bonker_togglevolt' WHERE entry=25589;
