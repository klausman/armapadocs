---
title: A simpler assignGear approach
weight: 5
---
## Introduction

**NOTE:** This guide assumes you use the F3 framework as downloaded on
or after 2020-02-26.

This document describes a simpler (but less powerful) way of using the
`assignGear` functionality in the mission framework PA uses. The main
complaint people have about `assignGear` is that it has many moving
parts, requires precise copy&past of many different classnames, and that
is hard to figure out what's wrong when it breaks. (Though the latter
part is mostly Arma's fault, not that of F3 or `assignGear`.)

The main advantages of `assignGear` are that the player's kit is
consistent between different players of the same role (all ARs get the
same loadout). It is also integrated with out respawn system. Giving the
players the same kit on respawn is *not* trivial: we can't just copy
whatever they had when they died, since they will likely have consumed
ammo, or found medical supplies. Therefore, the "starting loadout" of
the players must be stored somewhere. In the case of F3, that is
`assignGear`.

This guide tries to address the fact that there are a *lot* of variables
to set in the basic `assignGear` script, and it's not always clear what
influences what. On top of that, both radios and medical supplies are
set in different parts of the framework, so in total, the loadout of the
players is set in 4-5 files.

## The fix

Help comes in the form of the ACE arsenal. Not only does it have a
better UI, and the ability to save loadouts, but it also allows us to
export the entirety of a loadout as something we can use in
`assignGear`.

But before we can do that, we need to tell the framework that we want to use
the simpler version of `assignGear`. To do that, open `description.ext` and
find this section (it should be around line 470):

```cpp
class assignGear
{
    // Defines the functions to preInit the compling of the assignGear function
    // used by units.
    file = "f\assignGear";
    // If you want to use simple AssignGear, delete the line above and
    // uncomment (remove the //) the line below.
    //file = "f\assignGear_simple";
    class assignGear{};
};
```

Do just as the comment says: delete (or comment) the line that sayis `file =
"f\assignGear";` and uncomment (delete the `//`) on the line that says `file =
"f\assignGear_simple";`.

This will ensure that the relevant scripted parts of the framework (including
the init strings of the example mission units) will use the simplified scripts
located in `f\assignGear_simple`.

To export the current loadout into your clipboard, click `Export` at the
bottom of the arsenal screen:

<img src="arsenal_export.png">

Let's take a look at what we actually got there, by pasting it into a
text editor:

<img src="loadout_vim.png">

That looks entirely unreadable, though we can see e.g. the rifle and the
uniform, plus some items, like map and compass. This is the downside of this
method: editing that nested data structure quickly becomes unwieldy, unless we
just want to delete a few mags or change something obvious.

But it doesn't matter much: we can save loadouts in the ACE arsenal, and the
string we have here happens to be *exactly* what we want to use in
`assignGear`. In the simple script (`f\assignGear_simple\f_assignGar_nato.sqf`
if we're playing as BLUFOR), we pick the role we want to change, e.g. `co`,
`dc`, or `m`, and delete everything between the curly braces, so it looks like
this:

```
    case co:
    {
    };
```

Then we add `_unit setUnitLoadout`, the export string from ACE, and
close the line with a semicolon:

<img src="assigngear.png">

And presto, ready-made loadout. This still doesn't address the medical
and radio inventory situation. We'll get to that below.

## Medical supplies

We don't want to entirely disable the medical init scripts, since they do more
than just set player gear. But we do want to stop them from messing with their
inventory. Fortunately, that is all done in one file, in `f\ace3`, there is
`ACE3_MedicalClient.sqf` (be careful to not edit the `Converter` file that
has a very similar name).

Just delete the entire *contents* of the file. **Do not delete the file
itself.**

## Radios and radio configuration

The radio setup has changed with 1.x, fortunately, there is [a handy
guide](../tfar) about how it's used with both classic and simplified
`assignGear`.

## Conclusion/Caveats

This approach to `assignGear` has the advantage of being relatively simple when
creating loadouts: click them together in the ACE Arsenal, paste them into the
file, done. It does have downsides, though, in that it's more likely that
inconsistencies creep in, like accidentally giving the riflemen 40mm grenades
they have no weapons for.

Furthermore, `assignGear` goes beyond just setting loadouts at start and on
respawn: it can also be used to set the inventories of vehicles and supply
boxes (note the `v_car` and other classes around line 750 of the classic
`assignGear` script, as well as the `crate` classes below it). When using the
script as originally intended, the crates/vehicles would have exactly the right
equipment (spare weapons, ammo, supplies) that the players spawned with. In my
experience, PA makes little use of that, so maybe not much is lost.


