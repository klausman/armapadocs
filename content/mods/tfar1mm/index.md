---
title: Updating TFAR 0.9 to 1.0 (Mission Makers)
weight: 2
---
## General notes

<span style="color: red;">*Note:* While this doc is still accurate, there is a
[more pragmatic guide to using TFAR with
assignGear](../../mission_making/tfar) (both classic and simplified). This doc
is mostly explaingi how to change old missions to the new setup of TFAR 1.x.</span>

On the whole, the changes for TFAR 1 fall into four categories:

- Renamed things, usually var/functions renamed from `tf_whatever` to
  `TFAR_whatever`.  If you get an error about an unknown function, that is the
  most likely cause.
- Renamed *and changed* functions. Some functions may have changed parameters.
  When in doubt, read the TFAR source code or ask on `#arma-missionmaking`
- Things used to be variables, now are CBA settings. Most of that is covered
  below. If your changing of a variable does not elicit the expected result,
  consult the TFAR CBA settings (Settings > Addon Options, choose the Mission
  tab, pick TFAR Global settings).
- Entirely new stuff. Most of these are covered in CBA settings. They are
  unlikely to break your mission, since we chose sensible defaults.

Again, when in doubt, read the TFAR source, or ask on `#arma-missionmaking`.

## Variables

Renamed variables:

### Default Radios

Old|New|
---|---|
`TF_defaultWestBackpack`|`TFAR_DefaultRadio_Backpack_West`
`TF_defaultWestPersonalRadio`|`TFAR_DefaultRadio_Personal_West`
`TF_defaultWestRiflemanRadio`|`TFAR_DefaultRadio_Rifleman_West`
||
`TF_defaultEastBackpack`|`TFAR_DefaultRadio_Backpack_East`
`TF_defaultEastPersonalRadio`|`TFAR_DefaultRadio_Personal_East`
`TF_defaultEastRiflemanRadio`|`TFAR_DefaultRadio_Rifleman_East`
||
`TF_defaultGuerBackpack`|`TFAR_DefaultRadio_Backpack_Independent`
`TF_defaultGuerPersonalRadio`|`TFAR_DefaultRadio_Personal_Independent`
`TF_defaultGuerRiflemanRadio`|`TFAR_DefaultRadio_Rifleman_Independent`

Note that you normally won't have to edit files from the framework to change
these things: the TFAR CBA settings cover all of them.

### Default Frequencies, Radio assignment 

The default frequency variables are gone:

- `tf_freq_west`
- `tf_freq_west_lr`
- `tf_freq_east`
- `tf_freq_east_lr`
- `tf_freq_guer`
- `tf_freq_guer_lr`

For mission setup, the default frequencies can be set in the CBA settings.

These variables should also not be used anymore, again in favor of using CBA
Settings:

- `tf_no_auto_long_range_radio`
- `tf_same_sw_frequencies_for_side`
- `tf_same_lr_frequencies_for_side`
- `f_radios_settings_tfr_disableRadios`

## Object names

The radios from TFAR (but not ILBE!) have been renamed replacing the `tf_`
prefix with `TFAR_`. For example:

- `tf_rt1523g_big`
- `tf_rt1523g_big_bwmod`
- `tf_rt1523g_big_bwmod_tropen`
- `tf_rt1523g_big_rhs`
- `tf_rt1523g_black`
- `tf_rt1523g_fabric`
- `tf_rt1523g_green`
- `tf_rt1523g_sage`

become:

- `TFAR_rt1523g_big`
- `TFAR_rt1523g_big_bwmod`
- `TFAR_rt1523g_big_bwmod_tropen`
- `TFAR_rt1523g_big_rhs`
- `TFAR_rt1523g_black`
- `TFAR_rt1523g_fabric`
- `TFAR_rt1523g_green`
- `TFAR_rt1523g_sage`

The same is true for all other TFAR radios, items and containers as well.

**NOTE:** The ILBE radios (e.g. `tfw_ilbe_a_d`) retain their old names.

## Misc

We used to configure who gets LR radios in `f/radios/tfr/tfr_settings.sqf`. If
you *neither* use the CBA Settings for TFAR, *nor* are assigning exported ACE
Arsenal loadouts, then set `f_radios_settings_tfr_defaultLRBackpacks` to true
in the above mentioned file and make sure the settings at the top of
`f/radios/tfr/fn_tfr_addRadios.sqf` are what you want.

## TFAR CBA Settings Overview

Most of the settings are self-explanatory. Here, I will only highlight new
stuff and non-obvious settings. When in doubt, don't mess with a setting you
are unsure of.

### Disable Radio Code

Does just that: if you have a radio of the right type and set to the right
channel, you can hear everything even if you're not in the same faction. This
is only really interesting in TVT scenarios, or if GREENFOR and BLUFOR should
not be able to hear each other.

### Default Intercom Channel

The default vehicle intercom channel. Leave it as-is, there is little point to
changing it.

### AI Hearing/Hearing Speakers

These are biggies: with TFAR 0.9, AI could not hear players, i.e., no matter
how chatty players were, unless there was a line of sight or gunfire, the AI
would be ignorant of player positions.

These two settings change that: players speaking, or having radios on speaker,
will now inform the AI of player positions *if the AI is withing hearing range.*

### Channel Name/Channel Password

Don't change these, it would likely break Teamspeak Integration

### Taking away radios

This selects under which circumstances you can steal an enemy radio (including
its codes). Again, this is mostly useful for TVT scenarios.
