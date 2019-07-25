---
title: Antennas
---

## `TFAR_fnc_deleteRadioTower`
__Description__

De-initializes a Radio Tower

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the tower  |OBJECT |

__Return Value__

None

__Example__

```sqf
_this call TFAR_antennas_fnc_deleteRadioTower;
```


---

## `TFAR_fnc_initRadioTower`
__Description__

Initializes a Radio Tower

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the tower  |OBJECT |
1 |the Transmitting Range of the Tower  |SCALAR |

__Return Value__

None

__Example__

```sqf
[_this, 50000] call TFAR_antennas_fnc_initRadioTower;
```


---

## `TFAR_fnc_pluginAddRadioTower`
__Description__

Tells Teamspeak that there is a new Tower
Performancewise it's best to collect towers and pass multiple in one call.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the Tower  |OBJECT |

__Return Value__

None

__Example__

```sqf
[_tower1, _tower2] call TFAR_antennas_fnc_pluginAddRadioTower;
```


---

## `TFAR_fnc_pluginRemoveRadioTower`
__Description__

Tells Teamspeak that a Tower disappeared
Performancewise it's best to collect towers and pass multiple in one call.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the Tower  |OBJECT |

__Return Value__

None

__Example__

```sqf
[_tower1, _tower2] call TFAR_antennas_fnc_pluginRemoveRadioTower;
```


---
