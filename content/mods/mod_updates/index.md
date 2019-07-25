---
title: Mod updates in early 2019
weight: 4
---

## 3CB BAF Equipment (2.2 ▶ 2.6)

- Revised armour values to be inline with RHS using the 4 level NIJ system

### Fixed

- requiredVersion non-array
- NVGs to use ACE mono setting
- 'Blue' texture issue on some glass / transparant surfaces
- `Helmet_MK7_Camo_ESS_K` Kneepads LODs 2 and 3

### Updated

- Increased HMNVS radius of focal area

### Removed

- Magazine [] from CfgPatches as not a valid entry

## 3CB BAF Units (4.2 ▶ 4.9)

### Added

-  Ability to customize loadouts in Eden Editor
-  Additional white smoke in section supply crate
-  Cold War period units
-  Default backpacks appear on units in Eden Editor
-  FV432 Bulldog to Units and Mechanised Infantry Groups
-  Kestrel to MFC loadout
-  L9A1 pistol to Cold War units - replacing Glock
-  MAN Trucks to factions
-  Missing RM Crewman to list of units
-  Option in `BAF_unit_Module` to replace webbing with hidden plate alternative
-  Panama ROV to units
-  Panther CLV to units
-  Pistol randomization (L131a1 Glock / L105 Sig Sauer) to modern units
-  preloaded containers
-  Reskinned Optional RHS Chinook and C130 Hercules to Unit lists
-  RHIB to units
-  Surgical kit to medical crate.
 
### Fixed 
 
-  Army Coyote and Jackal group class names
-  BAF voices overwriting other mods
-  dismounting AI from Panama
-  HMNVS appearing in Binocular slot
-  MFC loadout
-  Non-spawning shemags
-  Numerous script errors

## 3CB BAF Vehicles (6.1 ▶ 9.0)

### Apache

- Fixed: @TFAR variable names

### MAN Truck LSV

- Added MAN Truck variants

### Bulldog

- Added: @ACRE intercom that works for rear seat FFV positions
- Added: EDEN enabled TI in RWS turret
- Added electric servo sound for remote turret
- Added ERA / SLAT armour
- Added: IR and Visible sensors & target tracking for the gunners Surveillance
  Target Acquisition and Weapon Sight on the RCWS
- Added: reload of Bulldog RWS only when gunner is turned out
- Added: sound occlusion for turned-in FFV positions
- Fixed: Cargo proxy position causing passenger feet showing through floor
- Fixed: Cargo seat animation twisting after player turns back in from FFV
- Fixed: FFV turn out bug causing map-wide player weapons to raise
- Fixed: Flag not disappearing upon destruction of vehicle
- Fixed: HMG Fire Control System and ranging
- Fixed: L7A2 zeroing
- Fixed: MFD error introduced by Tank DLC
- Fixed: Missing cupola shadow
- Fixed: Missing front and rear number plates
- Fixed: Zoom level on rear FFV when turned in
- Updated: GPMG weapon display information
- Updated RWS HMG Variant - remote turret no longer requires engine to be running
- Updated: RWS turret elevation
- Updated: Tracks and engine adjustments to incorporate Tank DLC changes

### Coyote/Jackal

- Added: @ACRE support, including intercom
- Added: @TFAR intercom and updated @TFAR variable names
- Fixed: Commander optics issue introduced by Tank DLC
- Fixed: file name paths for open/close door sounds
- Fixed: Flag not disappearing upon vehicle destruction
- Fixed: Fringing effect on mirrors and screens
- Fixed: Jackal HMG Woodland LOD4-5 stretched vertice upon destruction
- Fixed: L134 and L111 ammo animation
- Fixed: L7A2 zeroing
- Fixed: missing camera shake on firing
- Fixed: missing muzzle flash animation sources
- Fixed: Missing Muzzle Flash on L111a1
- Fixed: Missing selection "otochlaven" on Coyote P HMG Woodland
- Fixed: Mistake in model.cfg preventing main weapon not disappearing upon
  vehicle destruction
- Fixed: Suspension / Physx. Vehicle no longer dips beneath ground. Wheels move
  up on springs.
- Fixed: weapon skeleton bone errors
- Removed: Temporary named selection left in previous commit
- Updated: GPMG weapon display information

### Land Rover

- Added: @ACRE support, including intercom
- Added: Panama ROV
- Added: @TFAR intercom and updated @TFAR variable names
- Fixed: Clan logo on Soft Top hidden on strip down
- Fixed: Commander optics issue introduced by Tank DLC
- Fixed: Flag not disappearing upon vehicle destruction
- Fixed: Fringing effect on mirrors and screens
- Fixed: Incorrect disableSoundAttenuation parameter in MainTurret
- Fixed: L7A2 zeroing
- Fixed: Snatch turn in animation bug
- Fixed: WMIK mirrors appeared white in Gunner and Cargo LODs
- Fixed: WMIK rpt warning on missing Geometry LOD
- Removed: Unnecessary stabilisation from searchlight turret to fix viewpoint
  orientation on rotation when vehicle is parked on a slope.
- Updated: Soft Top ACE cargo capacity increased from 6 to 8
- Updated: WMIK GPMG weapon display info

### Merlin

- Fixed: L7A2 zeroing
- Fixed rpt warning on missing Geometry LOD
- Removed: Unneeded legacy crew
- Updated: GPMG weapon display information
- Updated: @TFAR variable names

### Panther CLV

- Added: Panther CLV
- Added electric servo sound for remote turret
- Updated RWS turret - Remote turret no longer requires engine to be running

### Offshore Raiding Craft

- Added ORC
- Added: camera shake to gunner 1st person view when vehicle weapon is fired
- Fixed: AI gunner not firing at enemy infantry
- Fixed: green and red navigation light positions
- Fixed: removed blink from white navigation light
- Updated: GPMG & HMG weapon display information
- Updated: @TFAR variable names

### Wildcat

- Updated: MFD camera views (visible and FLIR) can now be switched on
  independently by both pilot and copilot
- Updated: cockpit glass to enhance surface reflections and show bullet holes
  better

### Vehicle Weapons

- Added: Cold War period section supplies to logistics module
- Added: GPMG WMIK compatibility with servicing. Now replenishes inventory
  ammunition
- Added: Pylon weapons
- Fixed: ACOG sight rvmat error
- Fixed: Apache 30mm gatling gun config error
- Fixed: Compatibility with ACE3 and Logistics Menu for loading of crates into
  vehicle
- Fixed: FCS on L111a1 and L134a1 weapons
- Fixed: Hellfire L
- Fixed: Hellfire UI
- Fixed: Ownership issue with Apache pilot pylon weapons
- Fixed: Servicing Menu for vehicles with empty pylons causing a 'stuck'
  rearming bug
- Fixed: Sound occlusion
- Removed: Invalid CfgPatches entries
- Updated: GPMG & HMG’s changed to manual zeroing
- Updated: L7 belt weight

## 3CB BAF Weapons (2.2.1 ▶ 2.4)

### Added

- ACE3 ammo data
- ACE3 ballistics, iron sight and rail adjustments to all small arms
- L9a1 HP Browning Pistol and magazine
- Missing geometry LOD to L85UGL Holo-sight
- New L131A1 Glock-17 model
- New L7a2 and animations
- New L7 reload sound
- Sig Sauer pistol variants BAF L designations, plus magazines and accessories
- Suppressor option to L85 UGL variants
- Two-way RHS ammo compatibility for STANAG magazines, 5.56 and 7.62 belts

### Fixed 

- All smoke
- L105A1 flashlight accessory shining backwards
- L128A1 and L129 magWell’s which allowed loading of incorrect ammo
- L129 class inheritance errors
- L85UGL Holo-sight animation
- LLM Flashlight and Laser hint the wrong way around
- M6 inaccuracy issues
- NLAW top down attack
- Numerous mortar issues
- Sound attenuation on all weapons
- Sound on Zeus smoke, Mortar and JDAM that was missing in MP
- UGL smoke rounds - no crazy bouncing!
- Zeus JDAM inaccuracy. Increased destruction. Added shrapnel

### Updated

- Airburst rounds
- CfgPatches, removing invalid entries and applied code formatting
- L7 and L110 recoil
- NLAW recoil
- Reduced L7 belt weight based on new information
- Supply crates to include ammo for new weapons

## ACE (3.12.3 ▶ 3.12.6)

### Added

- Add MagazineWells support (#6604)
- Add possibility to create zeus during mission (#6203)
- Add Repair and Rearm interactions to Zeus (#6632)
- Add rksl pm II 5-25x56 compat (#6845)
- Add the ability to edit user placed markers (#6564)
- Arsenal - Add Ability to Transfer a Loadout from Saved to Default (#6793)
- Arsenal - Add config to force show magazines (mortars) (#6694)
- Arsenal - Add Default Loadouts API (#6558)
- Arsenal - Add Night Vision support stat for scopes (#6671)
- Arsenal - Add support for mission defined unit insignias (#6556)
- Ballistics - Add 100Rnd mags magwell to all MX variants (#6801)
- Ballistics/Realistic Names - Integrate P90 Compat (#6667)
- Chemlight and IR strobe improvements (#6645)
- Explosives - New Timer UI (#6402)
- FastRoping - Add rope items which deploy at lengths (#6498)
- If you were using the optional `ace_compat_adr_97.pbo`, make sure to remove
  it
- Illumination Flares (#4506)
- Map - Improve flashlight support (#6608)
- Markers - add setting allowing only marker creator to move (#6734)
- Medical - Adding option to convert vanilla medical gear (#6680)
- Medical - Add new setting to hide self-interaction actions (#6756)
- Medical - Add vehicle hint when loading unconc (#6759)
- Medical - Show tourniquets in Medical and Patient information (#6681)
- MicroDagr - add waypoint precision setting (#6437)
- MissileGuidance - Allow using vanilla fire mode key (#6732)
- Nametags - Adjustable colors settings (#6641)
- Quick Mount - Add Get In and Change seat action menu (#5745)
- SACLOS and HOT Missiles (#6708)
- Tagging - Ability to use custom materials (#6704)
- Tracers - Add magazines with different tracer colors (#6658)
- Zeus - Paradrop Cargo (#6743)

### Fixed

- ACE Tracer adjustment, fix nighttime visibility, add white tracers (#6060)
- AI - Fix garrison pathing (#6649)
- AI - Fix units not being removed from the garrison unitMove list consistently
  (#6651)
- Arsenal - Filter firemodes for precision display by showToPlayer (#6572)
- Arsenal - Fix arsenal not working reliably on remote AI units. (#6784)
- Arsenal - Fix attribute blacklist not working in multiplayer (#6598)
- Arsenal - Fix incorrect muzzle velocity stat displayed on magazine (#6844)
- Arsenal - Fix NVG overlay appearing in ace arsenal (#6673)
- Arsenal - Fix script stat script errors for odd weapons (#6794)
- Arsenal - Fix sort by value not sorting properly (#6570)
- Captives - Use the doApplyHandcuffs function for keybind (#6843)
- Cargo - Add load time coefficient setting (#6618)
- cfgSkeletons indentation formatting fixes (#6796)
- Chemlights - Add backwards compatible classname for orange chemlight (#6717)
- Common - disable light from green weap lasers (#6654)
- Disposable - Ignore secondary muzzles (#6737)
- Dragging - Fix player getting locked with isCarrying (#6770)
- Fastroping - Fix 3den default value (#6642)
- Fix M84 lods (#6854)
- Fix missing semicolon in CfgWeaponsReference (#6548)
- Fix problems when building with Armake (#6697)
- Fix rope redeploying without FRIES (#6599)
- Fix script errors reporting wrong line numbers (#6407)
- Fix slow motion falling of SLAM mines (#6619)
- Goggles - Fix `Show Goggle Effects in Third Person` setting (#6660)
- Hearing - add empty geometry to earplugs model (#6659)
- Interaction - Disable open door action on houses with no user actions (#6760)
- Interaction - Fix switching non-local portable light on (#6522)
- Interaction - Fix zeus remote control menu (#6733)
- Map - Fix effects breaking mid mission (#6566)
- Map - fix moved markers not synched (#6703)
- Markers - change an ERROR to WARNING for moving markers (#6714)
- Markers - Disable editing for everything non-icon (#6596)
- Medical - make setUnconscious not reset firing mode (#6519)
- Medical - Skip distance check if in same vehicle (#6757)
- MicroDagr - Fix waypoint scrolling (#6700)
- Nightvision - Fix ENVG II overlay (#6630)
- Parachute - Fix "hide altimeter" setting (#6721)
- Quickmount - Default enable quick mount (empty keybind) and Move to CBA
  Settings (#6613)
- Quick Mount - Fix turrets without weapon treated as gunner (#6636)
- Rearm - Fix locality issues with setMagazineTurretAmmo (#6787)
- Rearm - Fix mk6 mortar being reloadable when ammoHandling is enabled (#6648)
- Repair - Add condition check to progressBar (#6830)
- Repair - Fix isInRepairFacility for buildings at height (#6561)
- Repair - Fix Typhoon rear wheel change (#6207)
- Safe Mode - Fix disabled laser on safety switch (#6639)
- Safemode - Fix indicator when switching units (#6612)
- UI - Fix selective UI in cargo (#6585)
- Vehicles - fix engine start delay turning viv loaded vehicle when starting
  the engine (#6623)
- WeaponSelect - Fix putWeaponAway animation (#6758)
- Weather - Fix wind on airports (#6631)
- Wirecutters - Add compatibility with more fences from CUP (#6677)
- Wirecutters - Adding primary fence used on Sarahni (#6684)
- Zeus - Fix config code breaking during build (#6864)
- Zeus - fix script error `fnc_bi_moduleProjectile` (#6586)
- Zeus - Fix zeus creating after 1.86 (#6726)
- Zeus - Group Side Module: preserve group id and assigned team (#6569)

### Changed

- Add Feature Camera Player EH and Handling (#6573)
- Add IR beam to visible laser mode (#6208)
- Add localUnits array and use that inside medical statemachines (#4836)
- Add param for settings that require mission restart (#6512)
- AI - Cleanup garrison, add garrison path to curator (#6643)
- Arsenal - Add key handling to 3DEN attribute (#6622)
- Arsenal - Improvements to 3DEN attribute (#6849)
- Cargo - Add condition checking during load/unload (#6821)
- Cargo - Cache cargo vehicle classes (#6806)
- Cargo - CanLoadItem ignores vehicle height on scripted load (#6629)
- Changed: Remove ear ringing from flashbang explosions when wearing protective
  gear (e.g. ComTacs) (#6746)
- Change PBO check error messages (#6751)
- Common - checkfiles use cba's list of CfgPatches (#6800)
- Common - optimize toHex (#6788)
- Common - Use CBA addons instead of activatedAddons (#6802)
- Compat R3F - updated with the last version 3.6 (#6664)
- Compile minedetector scripts at preStart (#6799)
- Dogtags - Cache dogtag children actions (#6625)
- Dragging - Additional weight override parameter for setCarryable/setDraggable
  (#6780)
- eden rearm vehicles and pylons can changed by non-config rearm vehicles
  (#6424)
- Explosives - Add Event for tripflare triggering (#6663)
- Explosives - Change SLAM magnetic to detonate upon defusal (#6827)
- Explosives - Optimize creating explosive place actions (#6413)
- Fixed Typo from change to chance (#6789)
- Fix some item type magic numbers (#6487)
- French translations (#6644)
- Goggles - Add entries for APEX/Laws of War facewear (#6778)
- HuntIR - Move magwell compat to huntIR config (#6813)
- Improve checking of unit items (#6350)
- Interaction - Add condition to zeus actions (#6665)
- Interaction - Add Smash Windshield action (#6152)
- Interaction - Improve mouse hint (#6652)
- Interaction Menu - Only compile self actions when needed (#6792)
- Interact Menu - Cache config actions for CAManBase (#6818)
- Inventory - Cache inventory postInit config lookups (#6803)
- Italian translation s(#6621)
- Italian translation updates (#6738)
- Japanese translations (#6705)
- Make small UAVs battery life more realistic (#6647)
- Medical - optimize handle damage caching (#6657)
- Medical - Updated basic blood IV treatment time to be same as advanced
  medical (#6670)
- Minedetector - Cache detectableClasses (#6805)
- Move SelfActions from postInit to config (#6791)
- No Uniform Restrictions - Update for Arma 3 v1.88 (#6829)
- Performance Refactoring (findIf/loops) (#6607)
- Polish Translation (#6730, #6865)
- Pylons - Remove `ace_zeus` from requiredAddons (#6808)
- Pylons - Update configure pylons action (#6381)
- Realistic Names - Rename RGN to V40 Mini-Grenade, fix some trailing spaces
  (#6590)
- Realisticnames - Update AMS and KHS's name (#6605)
- Rearm - Use non-ambigious magazine names (#6761)
- Refuel - Cache refuel classes (#6807)
- Remove Redundancy in flashbangExplosionEh (#6749)
- Repair - Make eden attributes use config values as default (#6480)
- RHS Compat - Fix GREF canoes refuel interaction (#6575)
- RHS Compat - Fix static turrets interaction point (#6567)
- RHS Compat - MG42 (#6552)
- RHS Compat - Simplify HuntIR mag config (#6580)
- RHS Compat - Update allowSwapBarrels for some guns (#6675)
- RHS Compat - Update bases classes for RHS 4.6 (#6529)
- Scopes - Update AMS, KHS and LRPS `ACE_ScopeAdjust` (#6606)
- Tagging - Cache required items check and use uniqueItems (#6582)
- Tagging - Cache tagging static models (#6804)
- Translations - Portuguese (#6860)
- Update Japanese translation (#6838)
- Update No Uniform Restrictions for Arma 3 v1.84 (#6513)
- Vehicle Lock - Enable for planes (#6646)
- Wirecutters - Add compatibility with more fences from CUP (#6777) (#6750)
- Zeus - UI improvements and additional objects setting for Editable Objects
  module (#6391)

## ACEX (3.3.0 ▶ 3.4.2)

### Added 

- Add Chinese translations (#109, #129)
- Add Japanese translations (#98, #128, #135)
- Add Korean translations (#102)
- Field Rations (#114)
- Field Rations - Add CBA events for consuming items and refiling bottles
  (#159)
- Field Rations - Add P3Ds From Config (#170)
- Field Rations - Add settings to scale thirst/hunger restored (#160)
- Field Rations - Add setting to control effect on advanced fatigue (#167)
- Field Rations - Add water supply 3DEN attribute (#164)
- Fortify - Add events when creating / deleting objects (#110)
- Fortify - Add module to limit build locations (#115)
- Fortify - Add setting for hint display on budget update (#123)
- Fortify - Allow custom deploy handlers (#124)
- Kill Tracker - Add "Total Kills: <number>" to top of output (#126)
- Multi Player Sitting (rework #122) (#144)
- View Restriction - Add setting to preserve view for vehicle types (#107)

### Changed

- Field Rations - Decrease refill action distance (#154)
- Field Rations - Increased max possible setting value for survival times
  (#156)
- Fix error line numbers being wrong (#139)
- Fortify - Improve deploy handlers check (#131)
- Fortify - Require tool to remove objects (#117)
- Fortify - Use uniqueItems common function (#157)
- Fortify - Verify classnames exist (#100)
- Headless - Fix 3den default value (#141)
- Headless - Fix end mission not respecting virtual curators (#145)
- Hide setting modules (#134)
- Polish translation of Field Rations, Fortify and Headless. (#161)
- Sitting - Remove redundant run at settings init (#108)
- Update Japanese translation. (#177)
- Update Japanese translations (#147)
- View Restriction - Fix preserve view for vehicles with GUNNER view only
  (#138)
- View Restriction - Replace deprecated function call (#142)
- Volume - Enable compile cache for `acex_volume` (#169)

### Fixed

- Field Rations - Fix no model for water pumps and add action offset (#153)
- Field Rations - Fix terrain objects acting as water sources (#152)
- Fortify - Fix budget hint showing for all sides with tool setting (#133)
- Headless - Add missing `preStart` event handler (#132)
- Headless - Add naked unit bug workaround (#163)

## CBA (3.8.0 ▶ 3.10.1)

### Added

- Addon Options button in main menu (#976) commy2
- AK, SVD and AK+SVD side rails for JR (#1017) robalo
- Automatically localize subcategories in setting menu (#1003) mharis001
- Button to hide stock missions in the CREATE GAME menu (#1066, #1086) commy2
- Camera player event handler ported from ACE3 (#982) jonpas
- `CBA_fnc_compatibleMagazines` that supports mag wells (#965) PabstMirror
- `CBA_fnc_notify` (Port of ACE style hint notifications) (#1036) commy2
- `CBA_fnc_selectRandomArray` (#1049) neilzar
- Complete Turkish translations (#1006) 654wak654
- Event for confirming changes in Layout Editor ( #1070, #1075) commy2
- French translations (#968, #970, #1001) NorXAengell alganthe
- German translations (#979, #980, #981, #988) commy2
- Invisible Targets to editor (#1011, #1012) Tinter
- JAM magwells for SMAW and MAAWS launchers (#1071, #1072) Dahlgren
- Joint Ammo and Magazines (#108, #928, #990, #991, #994, #995, #997) robalo
  dedmen Drofseh
- keepAspectRatio parameter to Layout Editor (#1059) commy2
- More JAM magwells (#1007, #1009, #1010, #1019, #1020, #1029) robalo Drofseh
  xrufix Kllrt
- More JAM magwells (#1076, #1078) Drofseh
- Optional argument for default of hash created by `CBA_fnc_serializeNamespace`
  (#1044) xetra11
- Optional component to remove stock missions (#975) commy2
- P90, UMP40/45/9 & Beretta M9 magwells (#1061, #1091) 3Mydlo3 PabstMirror
- Polish translations (#983, #987) veteran29
- PREP() macro documentation (#1021, #1022) Bummeri commy2
- Script names to some functions for debugging (#1079) PabstMirror
- Search bar in mission browser (#974) commy2
- Server browser will remember entered passwords for every server (#973) commy2
- Some Japanese translations (#1088) classicarma
- Some tooltips for settings menu (#960, #961) commy2
- Subcategories for keybinding menu (#962, #966, #971, #972) GuzzenVonLidl
  commy2 mharis001
- Time setting type (#967) mharis001
- Turkish translations (#1002) 654wak654
- Updated JR for Arma v1.86 (#1023) robalo

### Changed

- 100rnd mags no longer added to non MX SW variants (#1050, #1058)
  TheMasterofBlubb
- Automatically translate sub-categories in settings menu (#1003) mharis001
- `CBA_fnc_findMax` reports last index in case of duplicates instead of first
  (#1025) commy2
- Duplicates are deleted from Extended Debug Console history (#1031) Dystopian
- Increased pool of available PerFrameHandler ids (#1018) commy2
- Maps are sorted alphabetically in CREATE GAME menu (#1045, #1067) commy2
- Refactored help component (#1073, #1094, #1095) commy2
- Shortened some functions configs (#1068) PabstMirror
- Updated DIK Codes header file paths (#1090) jonpas

### Fixed

- A broken FlexiMenu function (#1097, #1098) flibble666 commy2
- A duplicate stringtable entry for JAM (#1008) Katalam
- AI mounts locked static weapons when given taskDefend (#1013, #1016) Neciota
  Cuel
- `CBA_fnc_compatibleMagazines` falsely reporting inherited magazines (#1042)
  commy2
- `CBA_fnc_getConfigEntry` doesn't recognize NUMBER type expressions (#1039)
  commy2
- `CBA_fnc_getMuzzles` function header (#1093) Dystopian
- `CBA_fnc_getVolume` not calculating volume correctly (#984) Wakbub
- `cba_main component` loaded after `cba_jam` (#1062) commy2
- Changed settings won't save when using whitelist (#977, #978) neilzar
- Game crash when using `cba_settings_fnc_set` with out of bounds priority
  (#1092) commy2
- Hiding stock missions hides multiplayer editor (#1099) commy2
- `IS_ADMIN` and `IS_ADMIN_LOGGED` not usable in strings and config (#1048,
  #1074) commy2
- Joint Ammo Magzines component missing pboprefix (#1040) PabstMirror
- Potential race condition breaking `CBA_missionTime` in multiplayer (#1047)
  commy2
- UI bug when confirming changes in the settings menu (#1027, #1028) taro8
  commy2
- visionMode player event broken while operating UAV's (#1004, #1005) Tommo-S
  commy2

### Improved

- Increased Layout Editor control limit from 22 to 100 (#958) mharis001
- Increased string length limit of edit box type settings (#959) jokoho48
- Projectile Tracking optimzed by not tracking stationary objects (#985)
  PabstMirror
- Slider speeds in settings menu (#963) mharis001

### Optimized

- Addon XEH preInit and postInit cached at game start (#1052, #1055, #1056)
  dedmen
- Eden and Zeus item lists are preloaded and optimized (#1084) commy2
- FlexiMenu functions cached at game start (#1054, #1064, #1083, #1087) dedmen
- Forced unit addon activation (#1051, #1081) dedmen
- Removed BI function headers from release build (#1065) PabstMirror
- Removed unused local variable from `CBA_fnc_isTurnedOut` (#1014, #1060)
  commy2
- Skip checking turret path if not in vehicle (#1080) PabstMirror
- XEH incompatible classes cached at game start (#1053, #1057) dedmen
  PabstMirror

### Removed

- Rogue BOM characters from stringtables (#1000) veteran29

## CUP Terrains - Core (1.4.1 ▶ 1.11.2)

### Added

- `cup_terrains_ca_cti_buildings` - Added missing class Rotation to master model.cfg
- `cup_terrains_ca_plants_e2` - Initial commit of missing summer trees.
- `cup_terrains_ca_plants_e2` - Summer Bushes
- `cup_terrains_ca_roads2` - Added reverse texture for
  `mud_gravel_konec_reverse_ca.paa`
- `cup_terrains_ca_roads_e` - Added reverse version of ASF1 end texture for use
  with polyline roads.
- `cup_terrains_ca_structures,ca_structures_e,ca_structures_pmc,cwa_misc,class.py`
  - Added python script for fixing/adding class=pond named property to ponds
- `cup_terrains_maps_chernarus_winter` - Chernarus Winter: Added some more
  detail textures
- `cup_terrains_winter_animals` - Added winter hiddenSelection texture to white
  rabbit in preparation for an `Rabbit_f.p3d` update with hiddenSelection.
- `cup_terrains_winter_objects` - Added: All Railroad pieces retextured for
  Winter
- `cup_terrains_winter_objects` - Added: Snow/Ice on Sidewalks
- `cup_terrains_winter_objects` - Added: Winter retexture of moss-covered wall
- `cup_terrains_winter_plants` - Added 4 more trees
- `cup_terrains_winter_plants` - Added all bushes
- `cup_terrains_winter_plants` - Added all Chernarus Trees as winter versions
- `cup_terrains_winter_plants` - Added: First batch of new Winter trees
- `cup_terrains_winter_plants` - Added first five winter bushes.
- `cup_terrains_winter_plants` - Added more trees
- `cup_terrains_winter_plants` - Added: Seasonal Tree (WAR ON CHRISTMAS!)
- `cup_terrains_winter_plants` - Added: Two more winter plants
- `cup_terrains_winter_sounds` - Added winter sounds configs and dummy files
- `cup_terrains_worlds` - Added: Preview videos, intros and picture shot for
  Chernarus Winter
- `maps_saralite` - RVMATs for saralite surface textures
- `roadfix-` Added Hotfix PBO from A2 community terrains that are know to
  inherit from Chernarus, Utes or Takistan and not define their own
  roadshapefiles.
- `winter_animals` - Added Rabbit with white fur for winter terrains (base from
  A3 samples)
- `winter_animals,worlds` - Added Ambient hpp for winter terrains
- `winter_objects,winter_roads` - Added retextured version of road bridges
  (only road texture replaced for now)
- `winter_roads` - Added Winter road retexes for Winter Chernarus.
- `winter_roads` - Added winter roads pbo

### Fixed
- added missing `cup_terrains_roadfix.pbo` that should have been in release
  1.11.1
- `cup_terrains_ca_buildings,ca_structures_e` - Fixed occluders for multiple
  cabuildings and `House_K_5_EP1.p3d` - Fixes T2423, T2524, T2541
- `cup_terrains_ca_ca_c` - Fixed cfgSurface >> SandBeach >> maxSpeedCoef, typo
- `cup_terrains_ca_ca_c` - Potential fix for vehicle handling on Takistan - Ref
  T2427
- `cup_terrains_ca_plants2` - Fixed typo in trunk rvmats for Pinusn trees (typo
  bug all the back from Arma2)
- `cup_terrains_ca_plants_e2` - Fixed `p_carduus_summer.p3d` file path for
  `general_plant.rvmat`
- `cup_terrains_ca_sounds_c_dummy,ca_sounds_dummy` - Added some missing music
  sound files - T2660
- `cup_terrains_ca_structures,ca_structures_e,ca_structures_pmc,class.py` -
  Fixed "warn: Shape '???'" error from ponds (using class=pond in geometry LOD)
- `cup_terrains_ca_structures,ca_structures_e,ca_structures_pmc,cwa_misc,class.py`
  - Fixed non-convex component in view geometry of `Barn_W_02.p3d`
- `cup_terrains_ca_structures,ca_structures_e` - Fixed RVMATs ambient and
  diffuse on a couple of buildings from A2 and OA.
- `cup_terrains_ca_structures,ca_structures_e` - Fixed shadow on A2 military
  house.
- `cup_terrains_winter_plants` - Fixed: Ambient alpha on tree tunk (fixed
  T2825)
- Fixed Alpha on `ibr_plantsclutter_grass_flowers`
- Fixed Bad proxy objects - closes issue T2336
- Fixed Destructible Windows on `Land_A_Hospital`
- Fixed Face Normal on multiple p3ds
- Fixed floating `Land_Mil_Guardhouse_ep1`
- Fixed `Land_A_Villa`, opening top door - closes issue T2355
- Fixed `Land_HouseV_1I4` Fire Geo
- Fixed `Land_Pumpa`, now able to use pump more than once
- Fixed occluder issue with `Land_ammostore2/Land_cwa_ammostore2` - closes
  issue T2337
- Fixed opening second ammobox inside `Land_ammostore2/Land_cwa_ammostore2`
- Fixed re-added `CUP_Animations_Data` / `CUP_Animations_Config` back to
  cfgPatches (pbo was removed in previous release)
- worlds - Changed inheritance for EnvSounds to reflect changes in A3 base
  config
- worlds - Eased the effect of climate change: No more snow on Chernarus in
  early autumn.
- worlds - Made all baseclass definitions for Chernarus (Summer and Winter)
  CAWorld (this also fixes snow in summer)

### Improved

- `ca_plants2` - Arma 2 plants and bushes now uses new shaders.
- `ca_plants_e2` - ACR plants and bushes now uses new shaders.
- `ca_plants_pmc` - PMC plants and bushes now uses new shaders.
- `cup_terrains_ca_buildings,ca_buildings_c` - P3D `class=house` for
  `pletivo_wired_branaL/L_civil/P`, `plot_green_vrat_l/o/r`,
  `plot_rust_vrat_l/r`, `Plot_Wood_door` (will require rebinarize wrp to be
  animated on 3rd party maps
- `cup_terrains_ca_buildings` - Improved Panelak2/3 removed hole from roof,
  roof access still available via lift shaft
- `cup_terrains_ca_misc3_c` - Updated barGate2 door actions.
- `cup_terrains_ca_misc,ca_misc_acr,ca_misc_acr_c,ca_misc2,ca_misc3_c,ca_structures`
  - P3D class=house for barbgate, `terc_postava`, `A_MunicipalOffice` (clock
    hands have animations), `popupTarget`, `Shed_Ind02_dam` (will require
    rebinarize wrp to be animated on 3rd party maps)
- `cup_terrains_ca_plants2` - Tweaked various autumn tree colours.
- `cup_terrains_ca_plants_e2` - Tweaks to various summer trees RVMATS.
- `cup_terrains_ca_plants_e` - Operation Arrowhead plants and bushes now uses
  new shaders.
- `cup_terrains_cwa_buildings,cwa_buildings_c` - P3D class=house for
  `cwa_pletivo_wired_branaL`, `cwa_plot_green_vrat_l/o/r/vrata` (will require
  rebinarize wrp to be animated on 3rd party maps)
- `cup_terrains_maps_chernarus_winter,maps_chernarus_winter_c,winter_plants` -
  Normalized all p3d names in winter plants to prevent possible mixups
- `cup_terrains_maps_desert2` - P3D `class=house` for
  `cup_terrains_maps_desert2/data/Prop/Toilet.p3d`
- Improved `Land_A_Hospital`, AI Paths added for ground floor + AI can enter
  through broken windows
- Improved `Land_A_Hospital`, can now open front sliding doors
- Improved `Land_A_Office` Open/Close Door Detection
- Moved `CUP_Terrains_World/Weather` to its own `pbo CUP_Terrains_Weather` to
  prevent circular dependencies when using snow.
- `winter_plants` - Tagged some editor classes for winter plants to prevent
  mixups with other maps (this may throw an error in missions on winter
  chernarus being made between 24.12 and hotfix day when plants were placed
  manually)
- worlds - Moved all Chernarus stringtable names to CUP Worlds pbo

### Removed

- `cup_terrains_winter_sounds` - Removed config from winter sounds because it
  was added to early
- `winter_plants` - Removed duplicated editor classes in winter plants

## CUP Terrains - Maps (1.4.1 ▶ 1.11.2)

- Added Winter Chernarus
- Bukovina rebuilt from source.
- Bystrika rebuilt from source.
- Chernarus rebuilt from source.
- Chernarus Summer rebuilt from Source
- `cup_terrains_maps_chernarus_winter,` - Added a retextured stonewall to
  Winter Chernarus
- `cup_terrains_maps_chernarus_winter` - Added new sat texture (WIP) for
  Chernarus Winter
- `cup_terrains_maps_chernarus_winter` - Added new winter sidewalks to Winter
  Chernarus
- `cup_terrains_maps_chernarus_winter` - Added winter out texture for Chernarus
  winter.
- `cup_terrains_maps_chernarus_winter,winter_plants` - Added all new trees and
  bushes to Winter Chernarus
- Desert rebuilt from source.
- `maps_chernarus,maps_chernarus_summer,maps_takistan` - Added missing airport
  ground models for Chernarus variants and Takistan. Closes T2823
- `maps_chernarus_summer_c` - Replaced remaining autumn trees with summer
  counterparts on Summer Chernarus.
- `maps_sara_dbe1` - Added polyline roads to United Sahrani
- Porto rebuilt from source.
- Proving Grounds rebuilt from source.
- Rahmadi rebuilt from source.
- Sahrani rebuilt from source.
- Southern Sahrani rebuilt from source.
- Takistan rebuilt from source.
- United Sahrani rebuilt from source.
- Utes source build update.
- Zargabad rebuilt from source.

### Fixed:

- `cup_terrains_maps_chernarus` - Fixed misaligned gas pumps. Closed T1307
- `cup_terrains_maps_chernarus,maps_chernarus_summer` - Fixed floating trees on
  Chernarus and Summer Chernarus. Closes T2322
- `cup_terrains_maps_chernarus_summer,maps_chernarus_winter,maps_saralite,maps_takistan`
  - Fixed takistan ground textures.
- `cup_terrains_maps_eden_c,maps_utes_c` - Fixed cfgArmory on Utes
- `cup_terrains_maps_sara_dbe1,maps_sara_dbe1_c` - Replaced porto specific
  objects with equivalent objects from `CA_Misc` to remove porto dependency.
- `cup_terrains_maps_sara_dbe1` - Mirrored object fixes from Sahrani to United
  Sahrani.
- `cup_terrains_maps_sara` - Fixed barrels clipping into building. Closes T2385
- `cup_terrains_maps_sara` - Fixed floating fountain. Closes T1694
- `cup_terrains_maps_sara` - Fixed floating sign in Eponia. Closes T1934.
- `cup_terrains_maps_sara` - Fixed misaligned bar gates. Closes T2611
- `cup_terrains_maps_sara` - Fixed misaligned object. Closes T2384
- `cup_terrains_maps_sara` - Fixed misaligned powerlines. Closes T2435
- `cup_terrains_maps_sara` - Fixed misaligned scaffolding. Closes T1693
- `cup_terrains_maps_sara` - Fixed sunken substations across the whole island.
  Closes T2612
- `cup_terrains_maps_sara,maps_sara_dbe1,maps_saralite` - Fixed missing runway
  objects from the Sahrani's.
- `cup_terrains_maps_takistan` - Fixed floating rock on takistan. Closed T1655
- `cup_terrains_worlds` - Fixed: Chernarus Winter intro config
- `Fixed` the offset and reversed Y axis grid co-ordinates on Summer Chernarus.
- `Fixed` Y axis GPS grid co-ords for all maps. Closes T1714
- `maps_bohemia_c` - Fixed missing keypoints on Bystrika
- `maps_bootcamp_acr_c` - Fixed missing keypoints on Bukovina
- `maps_chernarus_winter_c` - Fixed winter Chernarus runways
- `maps_desert` - Fixed mask resolution on Desert. Closes T2655
- `maps_sara_dbe1` - Fixed floating objects on United Sahrani. Closes T2729
- `maps_shapur_baf` - Fixed mask resolution on Shapur.

### Improved

- `cup_terrains_ca_language` - Capitalized some generic location names on
  Chernarus
- `cup_terrains_ca_language` - Changed all Chernarus names to pattern Chernarus
  (time of year)
- `cup_terrains_ca_language` - Moved all Chernarus stringtable names to CUP
  Worlds pbo
- `cup_terrains_ca_language` - Relocalized german "Tschernarussland" to "Chernarus"
- `cup_terrains_maps_bohemia,maps_bootcamp_acr,maps_chernarus,maps_desert_e,maps_provinggrounds_pmc,maps_shapur_baf,maps_takistan,maps_zargabad` - Changes texture layer sizes to match A2 settings for: Bystrika,Bukovina,Chernarus,Desert,Proving Grounds, Shapur and Zargabad.
- `cup_terrains_maps_chernarus_summer_c` - Summer Clutter for Summer Chernarus.
- `cup_terrains_maps_chernarus_winter` - Added rails winter rails
- `cup_terrains_maps_chernarus_winter_c` - Tweaked wind noise for snowfall to only occur when there is actually wind
- `cup_terrains_maps_chernarus_winter` - Made most winter clutter more dense and rebalanced their composition
- `cup_terrains_maps_chernarus_winter,maps_chernarus_winter_c` - Moved Chernarus Winter pictureMap to World pbo
- `cup_terrains_maps_chernarus_winter,maps_chernarus_winter_c` - Updated Chernarus Winter picturemap
- `cup_terrains_maps_chernarus_winter` - Removed autumn leaves from winter clutter.
- `cup_terrains_maps_chernarus_winter` - Winter ground textures.
- `cup_terrains_maps_sara_dbe1` - Cleaned up redundant texture files.
- `cup_terrains_maps_sara` - Improved road to bridge connections for AI on all bridges.
- `cup_terrains_maps_sara` - Removed approx 1100 duplicate objects sitting at 0,0,0 on Sahrani.
- `cup_terrains_weather` - Fixed snow texture
- `maps_chernarus,maps_chernarus_summer,maps_chernarus_winter` - Improved road alignment on Chernarus variants.
- `maps_chernarus_winter_c` - Removed ambient (summer) sounds from winter chernarus
- `maps_chernarus_winter_c` - Removed wildlife, insects and leaves from winter chernarus
- `maps_desert2-` Removed wall clipping through building on porto. Closes T2821
- `maps_saralite` - Removed objects that existed under the map and off the mapframe on Southern Sahrani

### Removed

- `cup_terrains_ca_language,maps_chernarus_c,maps_chernarus_summer_c,maps_chernarus_winter_c,weather,worlds` - Removed additional cfgAmbientA3.hpp from winter and summer chernarus and referenced common one in CUP Worlds
- `cup_terrains_ca_language` - Removed custom stringtable from winter chernarus
- `cup_terrains_maps_chernarus_winter` - Removed hay bales from Chernarus
  Winter
- `cup_terrains_maps_chernarus_winter` - Removed hay from winter chernarus
- `cup_terrains_maps_saralite` - Removed unused tile RMVATs from saralite
- weather,worlds - Removed removal of rain sounds from snowfall.hpp. 3rd party
  terrains using the snowfall should remove the rainsound themself

## GRAD Trenches (v1.5.1 ▶ 1.5.5.2)

- added Chernarus Redux
- added digging help
- added Intercept compatability
- added russian translation (thank you 0Y0)
- added some more map support
- changed in CfgWorldsTextures from filePrefix to suffix
- fixed BI Key
- fixed CUP Maps
- fixed new placement system
- fixed small trench
- fixed wierd short trench bug

## Isla Duala (v3.8 ▶ v 3.9.5)

- added low shrub vegetation near the main border / river crossing
- added test wooden bridge at the main crossing (central border no-man zone)
- fixed clutter so it doesn't break other islands such as Lingor
- further lush vegetation (12000 extra plants) near rivers and in central area
- if water is too high at certain time of the mission you can add
  `ca\roads2\bridge\Bridge_wood_25.p3d` objects to make a makeshift crossing!
- improved graphics (middle and sat texture)
- improved with new satellite texture of the map (now at 20480x20480)
- massive improvement of lighting and satellite image of the map
- replaced the Generic African Buildings pbo with new V3 sign key (A2 ones are
  not working since Arma3 1.86.xxx patch)
- smaller bugfixes

## RHS AFRF (0.4.7 ▶ 0.4.8)

### Added

- B-8M1 20x rocket pod (replaces previous BIS rocket pod on RHS jets)
- New B-13L 122mm rocket pod model for jets

### Improved

- Added maddog auto seeking to R77 missile like vanilla missiles
- Added proper nameSound parameter to smoke shells
- Added pylon presets to Ka-52 & Mi-28
- Adjusted default radar range in info panels
- Adjusted (& sometimes added) zamerny memory point (AI aiming point) on many
  vehicles
- Adjusted tracks armor for AFRF vehicles
- ATGM optic on BMP-2 is now attached to ATGM base itself - reloading will
  change view direction
- Changed locality of MSK-40P script - attempt no2 - effects & used model
  should be now visible for other clients too in multiplayer missions
- Improved beret badge textures
- Increased FAB-100 damage
- Increased minimal hit for ERA blocks so they are no longer triggered by
  12.7mm rounds
- Mi-8 & Mi-24VT pilots were mising slingloading assistance panel
- Reduced lead parameter from tank launched ATGMs
- Replaced commander reticle to TPKU-2B from TKN-3 on BTR-60 & 70
- Replaced proxyShape of S-13 rockets with a model representing the frangible
  cover fitted to launch tubes
- Spurt-SD turret is now locked when driver is turned out
- T-72 & 80 tanks should be now vulnerable to bombs & heavy satchels
- Tochka-U is now using same explosion particle effects as Kh-55
- Tweaked aim point (zamerny) position on Tigrs
- Tweaked BMP-2 reticle script & fixed ATGM being added to players issue
- Tweaked Ka-52 AI max speed param
- Tweaked maxLeadSpeed for some of the ATGMs
- Tweaked minimal hit on K5 ERA blocks
- Tweaked strings for RPK mags & tripware flares
- Tweaked T-50 HUD
- Updated Kamaz-5350 textures

### Fixed

- AKS-74Ns could not mount/remount side rail attachment
- BTR-80s were missing brakeIdleSpeed parameter
- Fixed 2S3 Nuke shells were not properly triggered when using Artillery
  Computer
- Fixed BTR-60 commander was using wrong LOD when turned out
- Fixed BTR-80 3 color camo was not available in Eden Garage widget
- Fixed BTR-80 top cargo seats LOD when in optics mode
- Fixed ghost light cone in some BMP-2 models
- Fixed gripod, fold & NPZ rail system so it keeps currently loaded magazine
- Fixed Kamaz cabin seat was missing turn out action
- Fixed Kh-55 behavior after Encore update
- Fixed Mi-24 moving maps in SFM
- Fixed Mi-28 ejection elements weren't properly aligned after adding
  autocenter = 1 to model (added it so heli interacts properly with water)
- Fixed MSK-40P (Red) firing wrong flares
- Fixed Ob-681 sights
- Fixed some missing string in Stringtable.xml
- Fixed some NPZ/Folding issues with AK rifles (changes to wrong weapons)
- Fixed SSh-68 ghost object hanging in some distant LODs
- Fixed T-80A destruction & damage RVMATs
- Fixed too big RPG-7 dispersion
- Fixed Tu-95 AI Fire special waypoint
- Fixed ZU-23-2 was giving radar lock warning
- Mi-8 Copilots had access to too many panels
- S-25 rocket was not positioned correctly inside the launcher on MiG-29
- T-50 was missing radar locking sounds

## RHS GREF (0.4.7 ▶ 0.4.8)

### Added

- HIDF O-3A Trainer/Observation Aircraft

### Improved

- Added a "deployedPivot" memory point to IZh-18 and Sa-61
- Added availableForSupportTypes parameter to UH-1H
- Applied a reload sound to M79 GL
- Lowered M1 Garand position
- Reduced inventory mass of chest rigs and webbing (made roughly equivalent to
  6Sh92 and Vydra rigs in AFRF)
- Reduced MP-44 rate of fire to ~580 rounds per minute from 800
- Texture tweaks to TLA uniform
- Tweaked BRDM-2 PhysX config with some new parameters (engineMOI)

## RHS USAF (0.4.7 ▶ 0.4.8)

### Improved

- Added dedicated driver anim to HIMARS
- Added experimental IHADSS workaround for user with triple monitor setup (PiP
  ratio)
- Added flashing cross in flight mode when PNSV is out of its limits
- Added geometry occluder to HIMARS cargo LOD
- Added maddog autoseek to AIM-120 missiles
- Added proper nameSound parameter to smoke shells
- Added scripted particle effects to HIMARS (workaround for fire particles not
  working with pylon weapons - still WIP, missing dust circle and position has
  sometimes inncorrect offset)
- Adjusted default radar range in info panels
- Adjusted tracks armor for USAF vehicles
- Another tweak to Hellfire accuracy
- Corrected SLAP bullets muzzle velocity
- descriptionShort property for MLRS/HIMARS magazines
- IHADSS PNVS view is no longer working when PNVS or cockpit electronic systems
  are damaged
- Improved HIMARS cargo shadow LOD
- Improved PNVS accuracy (missing AGL to ASL conversion)
- Improved PNVS deinitialization
- Increased emissive value of AH-64 MFDs
- Increased minimal hit for ERA blocks so they are no longer triggered by
  12.7mm rounds
- Increased Mk82 bomb damage to be in line with GBU-12
- Increased SLAT armor minimal hit - no longer destroyable with small firearms
- Moved back AH-64 pilot cockpit light to reduce flare effect during night
- Reduced AH-64 FCR range to 8km from 11
- Reduced cost of 45ACP ammo - AI should no longer prefer using Colt over rifle
- SU-230A SpecterDR scopes descriptionShort now denotes them as being for
  7.62mm weapons
- Tweaked Bunker Busters TOWs with submunition parameters - they should be able
  to penetrate light structures and spread thermobaric blast wave inside
- Tweaked HP of ERA blocks on USAF vehicles
- Tweaked M230 AI dispersion coef - AI should be more accurate

### Fixed

- Disabled 'top' versions of laser attachments on MP7A1. They don't fit
- Fixed A10A landing gear light
- Fixed AH-64 & AH-1Z helicopter HMD target icon
- Fixed AH-64 MFD had big 0 when using AFM & extra gauges were enabled in
  options
- Fixed AI units with gripods were selecting pistols after spawning
- Fixed CH-53 joystick was moving in wrong direction
- Fixed gripod system so it keeps currently loaded magazine when transforming
- Fixed M109 destruction materials
- Fixed M2A2 (basic without BUSK) was missing tracks hitpoints
- Fixed M2 Bradleys hull hitpoints being immortal
- Fixed Mk-14 ironsight
- Fixed PNVS turning off after going into optic mode
- Fixed potential script error in MFD switching script
- Fixed script error after being killed when using IHADSS
- Fixed some rare script error when TADS view was shown on MFD
- Fixed woodland AH-64 crew was missing IHADSS helmet during night
- Glass on HIMARS right-hand door did not follow door opening animation
- M2 Bradley cargo had fault cargoProxyIndexes
- PNVS movement limits were inverted (forgot that min & max values in
  pilotCamera class are inverted...)
- Removed M142 HIMARS driver turn out action
- Some cfgweapons classes (mainly headgear) missing dlc = `RHS_USAF`; attribute
- SPC marksman vest shadow would break when the vest was retextured (rogue
  'camo' selection in SVLOD)
- Vehicle-in-Vehicle dimensions[] memory points were not properly set up in
  several FMTV and HEMTT variants

### Removed

- Cleared out some unused magazine classnames for 12x MLRS rockets. No longer
  needed for their intended purpose

## ShackTac UI (1.2.2 ▶ 1.2.4)

### Added

- STHUD and STGI will now fade out when player becomes unconscious while using
  ACE medical (Can be disabled by setting `STHud_UnconsciousFadeEnabled` or
  `STGI_UnconsciousFadeEnabled` to false)

### Fixed

- Fixed memory leak/crashing on Prei Kmaoch Luong (and possibly other terrains)
- No entry `bin/config.bin/RscDisplayMission/controls/STUI_Canvas.widthRailWay`
  warning message.

### Improved

- Improved occlusion/visibility checking
- Made nametags groupname code more robust
- Tweaked STHUD to better support existing color-blinded modes
