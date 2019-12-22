---
title: Custom airdrops for Simplex Support Services
weight: 8
---

SSS has a neat logistics airdrop module, but unfortunately, it can only spawn
base classes as items. This means that there is no easy way to customize the
contents of boxes or the inventory of vehicles.

Enter the `sss_airdrops` (and companions) script. It allows you to customize
box contents with relative ease, and as a bonus, allows you specify smoke or
chemlight markers that are spawned when the box (or vehicle) hits the ground,
so they are easier to find in the dark, or in difficult terrain.

## Basic setup

The script consists of three files:

- <tt><a href="sss_airdrops.sqf">sss_airdrops.sqf</a></tt> - The main script
- <tt><a href="sss_airdrops_bi.sqf">sss_airdrops_bi.sqf</a></tt> - Box Initialization
- <tt><a href="sss_airdrops_gl.sqf">sss_airdrops_gl.sqf</a></tt> - Generates the list of available boxes

All of these should be put in your mission folder, in the `pa\` subdirectory
(if that directory doesn't exist yet, just create it).

Next, places a Logistics Airdrop module from the SSS category in Modules:

<img src="sss_1.jpg"/>

Open it's Attributes:

<img src="sss_2.jpg"/>

The way to use the custom airdrops script is to put the following line in the
`List function` textbox:

```cpp
["gl"] call compile preprocessFileLineNumbers "pa\sss_airdrops.sqf"
```

## Customizing the boxes

Open `pa\sss_airdrops.sqf` in the editor of your choice and find this section:

```cpp
// BOX DEFINITIONS START

// FORMAT
// This should be an array of box definitions. Each Box definition has these
// components:
//
// [
//  "In-game Label",
//  "Box Classname",
//  "Icon",
//  ["Smoke", "Chemlight"],
//  [
//   ["some object class", N],
//   ["some other object class", N]
//  ]
// ]
//
// Label is what the players see in the logistics menu
// Box Classname is the box type, e.g. Box_NATO_Ammo_F. Vehicles work
//   the same way as boxes (including setting their inventory).
// Icon is used in the logistics menu and optional
// The Smoke or Chemlight list is a list of throwables that will be
//   spawned once the box hits the ground. Leave as [] for no markers.
// The next line sets the contents of the box. Note these are arrays of
//   classnames and numbers, setting the object and count of them (N).
//
// Example (two boxes of the same type, but with different contents,
// with the second getting a orange smoke shell on touchdown):
_boxes = [
  ["Rifle Ammo", "Box_NATO_Ammo_F", "", [],
   [
    ["hlc_30rnd_556x45_EPR_G36", 50],
    ["U_B_CombatUniform_mcam", 10]
   ]
  ],
  ["AR Ammo", "B_supplyCrate_F", "", ["SmokeShellOrange"],
   [
    ["rhsusf_200Rnd_556x45_M855_mixed_soft_pouch", 10],
    ["hlc_lmg_mk46mod1", 2],
    ["ACE_fieldDressing", 100],
    ["ACE_bloodIV_500", 30]
   ]
  ]
];

// BOX DEFINITIONS END -- no need to edit below this line
```

### A note on chemlights and smoke grenades

There is a non-obvious aspect to the way the script uses chemlights and smoke
grenades: the objects in your inventory have a different classname name the
in-game objects that then emit smoke or light. For example, while the bright
orange chemlight is called `ACE_Chemlight_UltraHiOrange` as an inventory item,
what you have to supply to this script is `ACE_G_Chemlight_UltraHiOrange`. The
base game smoke grenades work just fine as-is (like in the example above), but
items from mods may not. When in doubt, ask on #arma-missionmaking for help
with finding the right classname.
