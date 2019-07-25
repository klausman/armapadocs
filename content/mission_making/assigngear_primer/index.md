---
title: AssignGear Primer
weight: 1
---
## Introduction

This doc is meant to explain how `assignGear` works, and how it is *intended*
to be used. It's light on the actual scripting parts and does not cover how to
find weapon class names etc.

## The problem

The basic problem that `assignGear` tries to solve is that keeping consistent
loadouts and gear compatibility for the players (and, to a degree AI) is hard
when only using the Eden editor. The problems with the vanilla approach are:

- Unless you use just the vanilla loadouts, making sure that the faction is
  internally consistent, i.e. aside from specialists, everyone has the same
  rifle and ammo type, and the AARs carry the right ammo for the AR. Also,
  vehicles and crates should contain the right kind and amount of ammo for the
  faction.
- During mission making, the desired loadout of a faction may change, e.g. the
  automatic rifleman changes between M249 and M240B or the designated marksman
  initially has an M14 EBR, but the mission maker later decides that a Mk.11
  would be better. With three squads, this is now a lot of detail work to fix,
  as well as making sure the supplies are all correct.
- When players respawn using the F3 framework scripts, they need to get
  their intended loadout again. Saving the loadout on death and using
  that would not work, since it likely has changed from the starting
  loadout. Thus, the respawn script just runs `assignGear` on the unit
  and gets a consistent setup.

## The solution, in broad strokes

The way `assignGear` tries to solve this is to have a whole load of variables
that you assign class names to. For example this assignment:

```cpp
_rifle = "hlc_rifle_416D165";
_riflemag = "rhs_mag_30Rnd_556x45_Mk318_PMAG";
_riflemag_tr = "rhs_mag_30Rnd_556x45_Mk318_PMAG";
```

means that the standard rifle is the HK 416 D16.5, and what the normal and
tracer ammo types are by default. When then kitting out the rifleman, the
variables are used:

```cpp
// LOADOUT: RIFLEMAN
  case "r":
  {
    _unit addmagazines [_riflemag,7];
    _unit addmagazines [_riflemag_tr,2];
    _unit addweapon _rifle;
    _unit addmagazines [_grenade,3];
    _unit addmagazines [_mgrenade,3];
    _unit addmagazines [_smokegrenade,3];
    ["r"] call _backpack;
  };
```

Note that it doesn't really say "rifleman" in any of the functional parts,
just `r`. This is a convention that `assignGear` uses: the class names are
what matches an in-game unit's init string to the loadout defined in the
`assignGear` script. Thus, *any unit, no matter what it looks like in the
editor,* will get the rifleman loadout *if its init string uses the `r` class
like so:*

```cpp
["r",this] call f_fnc_assignGear;
```

The only thing the in-editor unit type matters for are whether it is a
medic/engineer, in the context of repairs and healing for ACE (and even those
aspects can be overridden in the unit attributes).

## Consequences

As a consequence, it doesn't really matter what those strings like `r` or
`aar` actually are, and neither does `_rifle` or `_riflemag`. So you very well
have something like this in your assignGear file:

```cpp
_ukdmrifle = `hlc_someclass`;
_ukdmmags = `rhs_mag_whatever`;

// more stuff here


switch (_typeofUnit) do
{

  // More classes here ...

  case "ukdm":
  {
    _unit addweapon _ukdmrifle;
    _unit addmagazines [_ukdmmags, 5];
    // rest of the kit
  };
};
```

and then use it for a unit like so:

```cpp
["ukdm",this] call f_fnc_assignGear;
```

This way, having mixed BLUFOR is easy and consistent.

## Medical supplies and radios

There are two types of equipment that are *not* handled this way: medical
supplies and radios. For those, `assignGear` calls out to other scripts,
namely `f\ace3\ACE3_MedicalStandardClient.sqf` and
`f\radios\tfr\fn_tfr_addRadios.sqf`. if you want to change that kind of gear,
those scripts are the way to go. Note that they use the same classes as
`assignGear` itself, so if you change `co` to something else, don't forget to
tweak the radio script making sure he still gets a long range radio.

## Further ideas

### Using ACE Arsenal exports

There is [a separate doc](../simpler_assigngear/) on how to combine ACE
arsenal loadout exports with `assignGear`, forgoing the `_rifle` and related
variables. 


