---
title: Static Radios
---

## `TFAR_fnc_setActiveChannel`
__Description__

sets the static radio's active channel

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the weaponholder containing the radio  |OBJECT |
1 |selected channel  |SCALAR |

__Return Value__

None

__Example__

```sqf
["TFAR_anprc_152_3",3] call TFAR_static_radios_fnc_setActiveChannel;
```


---

## `TFAR_fnc_setVolume`
__Description__

sets the static radio's volume

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the weaponholder containing the radio  |OBJECT |
1 |selected volume  |SCALAR |

__Return Value__

None

__Example__

```sqf
["TFAR_anprc_152_3",1] call TFAR_static_radios_fnc_setVolume;
```


---
