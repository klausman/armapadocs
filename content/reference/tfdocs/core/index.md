---
title: Core
---

## `TFAR_fnc_activeLrRadio`
__Description__

Returns the active LR radio.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
active LR radio  | ARRAY 

__Example__

```sqf
_radio = call TFAR_fnc_activeLRRadio;
```


---

## `TFAR_fnc_activeSwRadio`
__Description__

returns the active SR radio

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
active SR radio  | STRING 

__Example__

```sqf
call TFAR_fnc_activeSwRadio;
```


---

## `TFAR_fnc_addEventHandler`
__Description__

Adds an Eventhandler. Optionally only to a specific unit.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |ID for custom handler  |STRING |
1 |event name  |STRING |
2 |Code to execute when event is fired.  |CODE |
3 |Unit to use as filter.  |OBJECT |nil

__Return Value__

Description | Datatype(s)
--- | ---
Unique ID of the event handler  | NUMBER 

__Example__

```sqf
["MyID", "OnSpeak", {
params ["_unit","_volume"];
hint format ["%1 is speaking %2", name _unit, _volume];
}, player] call TFAR_fnc_addEventHandler;
```


---

## `TFAR_fnc_backpackLr`
__Description__

Returns the backpack radio (if there is one)

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Unit  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
Manpack or nil if no radio  | ARRAY 

__Example__

```sqf
_radio = player call TFAR_fnc_backpackLR;
```


---

## `TFAR_fnc_canSpeak`
__Description__

Tests whether it would be possible to speak at the given eye height and whether the unit is within an isolated vehicle.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 | Whether the unit is isolated and inside a vehicle.  |BOOL |
1 | The eye depth.  |NUMBER |

__Return Value__

Description | Datatype(s)
--- | ---
Whether it is possible to speak.  | BOOL 

__Example__

```sqf
_canSpeak = [false, -12] call TFAR_fnc_canSpeak;
```


---

## `TFAR_fnc_canUseDDRadio`
__Description__

Checks whether it is possible for the DD radio to be used at the current height and isolated status.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Eye height ASL  |NUMBER |
1 |Isolated and inside  |BOOL |

__Return Value__

Description | Datatype(s)
--- | ---
radio can be used  | BOOL 

__Example__

```sqf
_canUseDD = [-12,true] call TFAR_fnc_canUseDDRadio;
```


---

## `TFAR_fnc_canUseLRRadio`
__Description__

Checks whether the radio would be able to be used at passed depth.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Unit  |OBJECT |
1 |Isolated and inside  |BOOL |
2 |Can Speak  |BOOL |
3 |Eye height ASL  |NUMBER |

__Return Value__

Description | Datatype(s)
--- | ---
radio can be used  | BOOL 

__Example__

```sqf
_canUseSW = [player, false, false, 10] call TFAR_fnc_canUseLrRadio;
```


---

## `TFAR_fnc_canUseSWRadio`
__Description__

Checks whether the radio would be able to be used at passed depth.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Unit  |OBJECT |
1 |Isolated and inside  |BOOL |
2 |Can Speak  |BOOL |
3 |Eye height ASL  |NUMBER |

__Return Value__

Description | Datatype(s)
--- | ---
radio can be used  | BOOL 

__Example__

```sqf
_canUseSW = [player, false, false, 10] call TFAR_fnc_canUseSWRadio;
```


---

## `TFAR_fnc_CopySettings`
__Description__

Copies the settings from a radio to another.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Source Radio (SR/LR)  |ARRAY|STRING |
1 |Destination Radio (SR/LR)  |ARRAY|STRING |

__Return Value__

None

__Example__

```sqf
// LR - LR
[(call TFAR_fnc_activeLrRadio),[(vehicle player), "driver"]] call TFAR_fnc_copySettings;
// SW - SW
[(call TFAR_fnc_activeSwRadio),"TFAR_anprc148jem_20"] call TFAR_fnc_copySettings
```


---

## `TFAR_fnc_currentDirection`
__Description__

Returns current direction of Units head.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |unit to get the Head direction from.  |UNIT |TFAR_currentUnit

__Return Value__

Description | Datatype(s)
--- | ---
current look direction in Normalized 3D Vector  | ARRAY 

__Example__

```sqf
TFAR_currentUnit call TFAR_fnc_currentDirection;
```


---

## `TFAR_fnc_currentLRFrequency`
__Description__

Returns current Frequency of the active LR Radio

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
Frequency of active LR Radio  | STRING 

__Example__

```sqf
_LRFrequency = call TFAR_fnc_currentLRFrequency
```


---

## `TFAR_fnc_currentSWFrequency`
__Description__

Returns current Frequency of the active SR Radio

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
Frequency of active SR Radio  | STRING 

__Example__

```sqf
_SRFrequency = call TFAR_fnc_currentSWFrequency
```


---

## `TFAR_fnc_currentUnit`
__Description__

Return current player unit (player or remote controlled by Zeus).

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
current unit  | OBJECT 

__Example__

```sqf
call TFAR_fnc_currentUnit;
```


---

## `TFAR_fnc_eyeDepth`
__Description__

returns the eyepos of a unit

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
unit  | OBJECT |  

__Return Value__

Description | Datatype(s)
--- | ---
Position ASLW  | ARRAY 

__Example__

```sqf
player call TFAR_fnc_eyeDepth;
```


---

## `TFAR_fnc_fireEventHandlers`
__Description__

Fires all eventhandlers associated with the passed unit

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |ID for event  |STRING |
1 |parameters  |ANY |

__Return Value__

None

__Example__

```sqf
["OnSpeak", [player, TF_speak_volume_meters]] call TFAR_fnc_fireEventHandlers;
```


---

## `TFAR_fnc_forceSpectator`
__Description__

If second parameter is true player will moved to spectator mode
If false - normal behaviour will be restored.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |player  |OBJECT |
1 |force  |BOOL |

__Return Value__

None

__Example__

```sqf
[player, true] call TFAR_fnc_forceSpectator;
```


---

## `TFAR_fnc_generateFrequencies`
__Description__

Generates frequencies based on the passed parameters to be used in radio settings.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Channels  |SCALAR |
1 |Max frequency  |SCALAR |
2 |Min frequency  |SCALAR |
3 |Frequency Round Power  |SCALAR |

__Return Value__

Description | Datatype(s)
--- | ---
Frequencies for channels  | ARRAY 

__Example__

```sqf
// LR
_frequencies = [TFAR_MAX_LR_CHANNELS,TFAR_MAX_ASIP_FREQ,TFAR_MIN_ASIP_FREQ,TFAR_FREQ_ROUND_POWER] call TFAR_fnc_generateFrequencies;
// SW
_sw_frequencies = [TFAR_MAX_CHANNELS,TFAR_MAX_SW_FREQ,TFAR_MIN_SW_FREQ,TFAR_FREQ_ROUND_POWER] call TFAR_fnc_generateFrequencies;
```


---

## `TFAR_fnc_generateLrSettings`
__Description__

Generates settings for the LR radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |false to generate settings without generating frequencies.  |BOOL |true

__Return Value__

Index | Description | Datatype(s) | Default Value
--- | --- | --- | ---
0 | active channel  | NUMBER | 
1 | Volume  | NUMBER | 
2 | Frequencies for channels  | ARRAY | 
3 | Stereo setting  | NUMBER | 
4 | Encryption code  | STRING | 
5 | Additional active channel  | NUMBER | 
6 | Additional active channel stereo mode  | NUMBER | 
7 | Empty  | NIL | 
8 | Speaker mode  | NUMBER | 
9 | turned on  | BOOL | 

__Example__

```sqf
_settings = call TFAR_fnc_generateLrSettings;
```


---

## `TFAR_fnc_generateSrSettings`
__Description__

Generates settings for the SR radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |false to generate settings without generating frequencies.  |BOOL |true

__Return Value__

Index | Description | Datatype(s) | Default Value
--- | --- | --- | ---
0 | active channel  | NUMBER | 
1 | Volume  | NUMBER | 
2 | Frequencies for channels  | ARRAY | 
3 | Stereo setting  | NUMBER | 
4 | Encryption code  | STRING | 
5 | Additional active channel  | NUMBER | 
6 | Additional active channel stereo mode  | NUMBER | 
7 | Owner's UID  | STRING | 
8 | Speaker mode  | NUMBER | 
9 | turned on  | BOOL | 

__Example__

```sqf
_settings = call TFAR_fnc_generateSRSettings;
```


---

## `TFAR_fnc_getAdditionalLrChannel`
__Description__

Gets the additional channel for the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Channel  | NUMBER 

__Example__

```sqf
_channel = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getAdditionalLrChannel;
```


---

## `TFAR_fnc_getAdditionalLrStereo`
__Description__

Gets the stereo setting of additional channel of the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Stereo setting : Range (0,2) (0 - Both, 1 - Left, 2 - Right)  | NUMBER 

__Example__

```sqf
_stereo = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getAdditionalLrStereo;
```


---

## `TFAR_fnc_getAdditionalSwChannel`
__Description__

Gets the additional channel for the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Channel  | NUMBER 

__Example__

```sqf
_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getAdditionalSwChannel;
```


---

## `TFAR_fnc_getAdditionalSwStereo`
__Description__

Gets the stereo setting of additional channel of the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Stereo setting : Range (0,2) (0 - Both, 1 - Left, 2 - Right)  | NUMBER 

__Example__

```sqf
_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getAdditionalSwStereo;
```


---

## `TFAR_fnc_getChannelFrequency`
__Description__

Returns the frequency for the passed channel and radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |OBJECT|STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Frequency  | STRING 

__Example__

```sqf
// LR radio - channel 1
[(call TFAR_fnc_activeLrRadio), 1] call TFAR_fnc_getChannelFrequency;
// SW radio - channel 1
[(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_getChannelFrequency;
```


---

## `TFAR_fnc_getCopilot`
__Description__

Returns the unit in the passed vehicle's co-pilot seat

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Vehicle  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
Unit occupying the vehicle's co-pilot seat, objNull if there is no co-pilot  | OBJECT 

__Example__

```sqf
_copilot = (vehicle player) call TFAR_fnc_getCopilot;
```


---

## `TFAR_fnc_getCurrentLrStereo`
__Description__

Gets the stereo of current channel (special logic for additional) setting of the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Stereo setting : Range (0,2) (0 - Both, 1 - Left, 2 - Right)  | NUMBER 

__Example__

```sqf
_stereo = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getCurrentLrStereo;
```


---

## `TFAR_fnc_getCurrentSwStereo`
__Description__

Gets the stereo setting of current channel (special logic for additional) the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Stereo setting : Range (0,2) (0 - Both, 1 - Left, 2 - Right)  | NUMBER 

__Example__

```sqf
_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getCurrentSwStereo;
```


---

## `TFAR_fnc_getDefaultRadioClasses`
__Description__

Return array of default radio classes for player.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |unit  |OBJECT |

__Return Value__

Index | Description | Datatype(s) | Default Value
--- | --- | --- | ---
0 | default LR  | STRING | 
1 | defaultPersonal  | STRING | 
2 | defaultRifleman  | STRING | 
3 | defaultAirborne  | STRING | 

__Example__

```sqf
_classes = call TFAR_fnc_getDefaultRadioClasses;
```


---

## `TFAR_fnc_getDefaultRadioSettings`
__Description__

Return array of default radio classes for player.
The order is:
1. User-specific frequencies (for LR, an radio with the side-encryptionCode is needed)
2. Group-specific frequencies (for LR, an radio with the side-encryptionCode is needed)
3. Side-specific frequencies (if same Frequencies for side is enabled)
4. Randomized frequencies

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |is SR radio  |BOOL |
1 |the unit  |OBJECT |
2 |the radiotype  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
default settings  | TYPENAME 

__Example__

```sqf
_SRSettings = true call TFAR_fnc_getDefaultRadioSettings;
_LRSettings = false call TFAR_fnc_getDefaultRadioSettings;
```


---

## `TFAR_fnc_getLrChannel`
__Description__

Gets the channel for the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Channel  | NUMBER 

__Example__

```sqf
_channel = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrChannel;
```


---

## `TFAR_fnc_getLrFrequency`
__Description__

Gets the frequency for the active channel.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Frequency  | NUMBER 

__Example__

```sqf
_frequency = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrFrequency;
```


---

## `TFAR_fnc_getLrRadioCode`
__Description__

Returns the encryption code for the passed radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio String  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Encryption code  | STRING 

__Example__

```sqf
(call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrRadioCode;
```


---

## `TFAR_fnc_getLrRadioProperty`
__Description__

returns specified radio property

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Backpack/vehicle  |OBJECT |
1 |Property name  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Value of property  | NUMBER|TEXT 

__Example__

```sqf
[(vehicle player), "TF_hasLRradio"] call TFAR_fnc_getLrRadioProperty;
```


---

## `TFAR_fnc_getLrSettings`
__Description__

Returns the current settings for the passed radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
settings  | ARRAY 

__Example__

```sqf
(call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings;
```


---

## `TFAR_fnc_getLrSpeakers`
__Description__

Gets the speakers setting of the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
speakers or headphones  | BOOL 

__Example__

```sqf
_speakers = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSpeakers;
```


---

## `TFAR_fnc_getLrStereo`
__Description__

Gets the stereo setting of the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Stereo setting : Range (0,2) (0 - Both, 1 - Left, 2 - Right)  | NUMBER 

__Example__

```sqf
_stereo = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrStereo;
```


---

## `TFAR_fnc_getLrVolume`
__Description__

Gets the volume of the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Volume : range (0,10)  | NUMBER 

__Example__

```sqf
_volume = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrVolume;
```


---

## `TFAR_fnc_getRadioItems`
__Description__

returns the TFAR radio items of a unit (without backpack radios)

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the unit  |OBJECT |
1 |without duplicates  |BOOL |true

__Return Value__

Description | Datatype(s)
--- | ---
the radioitems of a unit  | ARRAY 

__Example__

```sqf
_itemlist = [_player] call TFAR_fnc_getRadioItems;
```


---

## `TFAR_fnc_getRadioOwner`
__Description__

Gets the owner of a SR radio.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
radio classname  | STRING |  

__Return Value__

Description | Datatype(s)
--- | ---
UID of owner of radio  | STRING 

__Example__

```sqf
_owner = (call TFAR_fnc_activeSwRadio) call TFAR_fnc_getRadioOwner;
```


---

## `TFAR_fnc_getSideRadio`
__Description__

Returns the default radio for the passed side.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |side  |SIDE |
1 |radio type : Range [0,2] (0 - LR, 1 - SW, 2 - Rifleman)  |NUMBER |

__Return Value__

Description | Datatype(s)
--- | ---
Default Radio  | STRING|OBJECT 

__Example__

```sqf
_defaultLRRadio = [side player, 0] call TFAR_fnc_getSideRadio;
_defaultSWRadio = [side player, 1] call TFAR_fnc_getSideRadio;
_defaultRiflemanRadio = [side player, 2] call TFAR_fnc_getSideRadio;
```


---

## `TFAR_fnc_getSwChannel`
__Description__

Gets the channel for the passed radio

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Radio classname  | STRING |  

__Return Value__

Description | Datatype(s)
--- | ---
Channel  | NUMBER 

__Example__

```sqf
_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
```


---

## `TFAR_fnc_getSwFrequency`
__Description__

Gets the frequency for the active channel.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Radio classname  | STRING |  

__Return Value__

Description | Datatype(s)
--- | ---
Frequency  | NUMBER 

__Example__

```sqf
_frequency = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwFrequency;
```


---

## `TFAR_fnc_getSwRadioCode`
__Description__

Returns the encryption code for the passed radio.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Radio classname  | STRING |  

__Return Value__

Description | Datatype(s)
--- | ---
Encryption code  | STRING 

__Example__

```sqf
(call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwRadioCode;
```


---

## `TFAR_fnc_getSwSettings`
__Description__

Returns the current settings for the passed radio.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Radio classname  | STRING |  

__Return Value__

Description | Datatype(s)
--- | ---
settings  | ARRAY 

__Example__

```sqf
(call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwSettings;
```


---

## `TFAR_fnc_getSwSpeakers`
__Description__

Gets the speakers setting of the passed radio

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Radio classname  | STRING |  

__Return Value__

Description | Datatype(s)
--- | ---
speakers or headphones  | BOOL 

__Example__

```sqf
_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwSpeakers;
```


---

## `TFAR_fnc_getSwStereo`
__Description__

Gets the stereo setting of the passed radio

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Radio classname  | STRING |  

__Return Value__

Description | Datatype(s)
--- | ---
Stereo setting : Range (0,2) (0 - Both, 1 - Left, 2 - Right)  | NUMBER 

__Example__

```sqf
_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwStereo;
```


---

## `TFAR_fnc_getSwVolume`
__Description__

Gets the volume of the passed radio

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Radio classname  | STRING |  

__Return Value__

Description | Datatype(s)
--- | ---
Volume : range (0,10)  | NUMBER 

__Example__

```sqf
_volume = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwVolume;
```


---

## `TFAR_fnc_getTeamSpeakChannelID`
__Description__

Returns TeamSpeak channel ID.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
ID of the current channel  | STRING 

__Example__

```sqf
call TFAR_fnc_getTeamSpeakChannelID;
```


---

## `TFAR_fnc_getTeamSpeakChannelName`
__Description__

Returns TeamSpeak channel name.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
name of the channel  | STRING 

__Example__

```sqf
call TFAR_fnc_getTeamSpeakChannelName;
```


---

## `TFAR_fnc_getTeamspeakPluginVersion`
__Description__

Returns TeamSpeak Plugin version.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
version  | STRING 

__Example__

```sqf
call TFAR_fnc_getTeamspeakPluginVersion;
```


---

## `TFAR_fnc_getTeamSpeakServerName`
__Description__

Returns TeamSpeak server name.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
name of the server  | STRING 

__Example__

```sqf
call TFAR_fnc_getTeamSpeakServerName;
```


---

## `TFAR_fnc_getTeamSpeakServerUID`
__Description__

Returns TeamSpeak server UID.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
UID of the current server  | STRING 

__Example__

```sqf
call TFAR_fnc_getTeamSpeakServerUID;
```


---

## `TFAR_fnc_getTransmittingDistanceMultiplicator`
__Description__

Return multiplicator for sending distance of radio.

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_getTransmittingDistanceMultiplicator;
```


---

## `TFAR_fnc_getVehicleConfigProperty`
__Description__

Gets a config property (getNumber/getText)
Only works for CfgVehicles.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Item classname  |STRING |
1 |property  |STRING |
2 |Default Value  |ANY |""

__Return Value__

Description | Datatype(s)
--- | ---
value  | NUMBER|TEXT|ARRAY 

__Example__

```sqf
[_LRradio, "tf_hasLrRadio", 0] call TFAR_fnc_getVehicleConfigProperty;
```


---

## `TFAR_fnc_getVehicleRadios`
__Description__

Gets a list of radios in the specified vehicle

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Vehicle  |OBJECT |

__Return Value__

Index | Description | Datatype(s) | Default Value
--- | --- | --- | ---
0 | Vehicle  | OBJECT | 
1 | Radio Settings ID  | STRING | 

__Example__

```sqf
_radios = _vehicle call TFAR_fnc_getVehicleRadios;
```


---

## `TFAR_fnc_getVehicleSide`
__Description__

Returns the side of the vehicle, based on the vehicle model and not who has captured it.
Also takes into account a variable on the vehicle (tf_side)

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |vehicle  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
side of vehicle  | SIDE 

__Example__

```sqf
_vehicleSide = (vehicle player) call TFAR_fnc_getVehicleSide;
```


---

## `TFAR_fnc_getWeaponConfigProperty`
__Description__

Gets a config property (getNumber/getText)
Only works for CfgWeapon.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Item classname  |STRING |
1 |property  |STRING |
2 |Default Value  |ANY |""

__Return Value__

Description | Datatype(s)
--- | ---
value  | NUMBER|TEXT|ARRAY 

__Example__

```sqf
[_SrRadio, "tf_prototype", 0] call TFAR_fnc_getWeaponConfigProperty;
```


---

## `TFAR_fnc_hasRadio`
__Description__

Check if a unit has a radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the unit  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
the unit has a radio  | BOOL 

__Example__

```sqf
_hasRadio = [_player] call TFAR_fnc_hasRadio;
```


---

## `TFAR_fnc_hasVehicleRadio`
__Description__

Checks for LW radio presence

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Vehicle to check  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
has a LR  | BOOL 

__Example__

```sqf
_present = (vehicle player) call TFAR_fnc_hasVehicleRadio;
```


---

## `TFAR_fnc_haveDDRadio`
__Description__

Returns whether the player has a DD radio.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
has a DD  | BOOL 

__Example__

```sqf
_hasDD = call TFAR_fnc_haveDDRadio;
```


---

## `TFAR_fnc_haveLRRadio`
__Description__

Returns whether the player has a LR radio

__Parameters__

None

__Return Value__

None

__Example__

```sqf
_hasLR = call TFAR_fnc_haveLRRadio;
```


---

## `TFAR_fnc_haveProgrammator`
__Description__

Returns whether the player has a programmer

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
has a programmer  | BOOL 

__Example__

```sqf
_hasProgrammer = call TFAR_fnc_haveProgrammator;
```


---

## `TFAR_fnc_haveSWRadio`
__Description__

Returns whether the player has a SR radio

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
has SR  | BOOL 

__Example__

```sqf
_hasSW = call TFAR_fnc_haveSWRadio;
```


---

## `TFAR_fnc_hideHint`
__Description__

Removes the hint from the bottom right

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_hideHint;
```


---

## `TFAR_fnc_isAbleToUseRadio`
__Description__

Checks whether the current unit is able to use their radio.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
is able to use  | BOOL 

__Example__

```sqf
_ableToUseRadio = call TFAR_fnc_isAbleToUseRadio;
```


---

## `TFAR_fnc_isBackpackRadio`
__Description__

Returns if a radio is a backpacked radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
Radio classname  | BOOL 

__Example__

```sqf
"TFAR_anprc_152" call TFAR_fnc_isBackpackRadio;
```


---

## `TFAR_fnc_isForcedCurator`
__Description__

Return if unit if forced curator.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |unit to check  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
is unit forced curator  | BOOL 

__Example__

```sqf
player call TFAR_fnc_isForcedCurator;
```


---

## `TFAR_fnc_isLRRadio`
__Description__

Returns if a radio is a Longrange radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
True if Longrange, false if handheld radio.  | BOOL 

__Example__

```sqf
"TFAR_anprc_152" call TFAR_fnc_isLRRadio;
```


---

## `TFAR_fnc_isPrototypeRadio`
__Description__

Returns if a radio is a prototype radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
is Prototype radio  | BOOL 

__Example__

```sqf
if ("TFAR_anprc148jem" call TFAR_fnc_isPrototypeRadio) then {
hint "Prototype";
};
```


---

## `TFAR_fnc_isRadio`
__Description__

Checks whether the passed radio is a TFAR radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
is a radio  | BOOL 

__Example__

```sqf
_isRadio = "NotARadioClass" call TFAR_fnc_isRadio;
```


---

## `TFAR_fnc_isSameRadio`
__Description__

Checks whether the two passed radios have the same prototype radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |radio classname  |STRING |
1 |radio classname  |STRING |

__Return Value__

Description | Datatype(s)
--- | ---
same parent radio  | BOOL 

__Example__

```sqf
if([(call TFAR_fnc_activeSwRadio), "TFAR_fadak"] call TFAR_fnc_isSameRadio) then {
hint "same parent radio";
};
```


---

## `TFAR_fnc_isSpeaking`
__Description__

Check whether a unit is speaking

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Unit  | OBJECT |  

__Return Value__

Description | Datatype(s)
--- | ---
the unit is speaking  | BOOL 

__Example__

```sqf
if (player call TFAR_fnc_isSpeaking) then {
hint "You are speaking";
};
```


---

## `TFAR_fnc_isTeamSpeakPluginEnabled`
__Description__

Returns is TeamSpeak plugin enabled on client.

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
is enabled  | BOOL 

__Example__

```sqf
call TFAR_fnc_isTeamSpeakPluginEnabled;
```


---

## `TFAR_fnc_isVehicleIsolated`
__Description__

checks wether the vehicle is isolated

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |the vehicle  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
is isolated  | BOOL 

__Example__

```sqf
_isolated = (vehicle player) call TFAR_fnc_isVehicleIsolated;
```


---

## `TFAR_fnc_loadoutReplaceProcess`
__Description__

iterates through player's loadouts and replaces actual radios with prototypes

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_loadoutReplaceProcess;
```


---

## `TFAR_fnc_lrRadiosList`
__Description__

List of all the players LR radios

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
unit  | OBJECT |  

__Return Value__

Description | Datatype(s)
--- | ---
List of all the player's LR radios  | ARRAY 

__Example__

```sqf
_radios = TFAR_currentUnit call TFAR_fnc_LRRadiosList;
```


---

## `TFAR_fnc_objectInterception`
__Description__

Returns the number of voice-blocking Objects between player and _unit

__Parameters__

None

__Return Value__

Description | Datatype(s)
--- | ---
amount of objects between player and _unit  | NUMBER 

__Example__

```sqf
_unit call TFAR_fnc_objectInterception;
```


---

## `TFAR_fnc_onMissionEnd`
__Description__

Tells the Teamspeak plugin that we are not ingame anymore

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_onMissionEnd;
```


---

## `TFAR_fnc_parseFrequenciesInput`
__Description__

parses a frequencies array and fills it up with default values
does a valuecheck and ignores wrong values

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |argument name  |STRING |
1 |min amount of channels  |NUMBER |
2 |min freq  |NUMBER |
3 |max freq  |NUMBER |
4 |round power  |NUMBER |

__Return Value__

Description | Datatype(s)
--- | ---
parsed frequencies  | ARRAY 

__Example__

```sqf
["[50.16549, 51122, 52, 53, 4, 5, 56, 57, 58, 59, ""asd"", asd, ""88""]", 8, 87, 40] call TFAR_fnc_parseFrequenciesInput;
```


---

## `TFAR_fnc_pluginNextDataFrame`
__Description__

Tells the plugin that the current DataFrame is done.
This tells the plugin that we are currently ingame.

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_pluginNextDataFrame;
```


---

## `TFAR_fnc_processTangent`
__Description__

Called when tangent is released.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Hint text  |STRING |
1 |Request string  |STRING |
2 |Hint display time - 0 won't show a hint  |STRING |2.5

__Return Value__

None

__Example__

```sqf
_hintText = format[localize LSTRING(transmit_end),format ["%1<img size='1.5' image='%2'/>",[_radio select 0, "displayName"] call TFAR_fnc_getLrRadioProperty,
getText(configFile >> "CfgVehicles" >> typeOf (_radio select 0) >> "picture")],(_radio call TFAR_fnc_getLrChannel) + 1, call TFAR_fnc_currentLRFrequency];
_request = format["TANGENT_LR	RELEASED	%1%2	%3	%4", call TFAR_fnc_currentLRFrequency, (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrRadioCode,
([_radio select 0, "tf_range"]call TFAR_fnc_getLrRadioProperty) * (call TFAR_fnc_getTransmittingDistanceMultiplicator), [_radio select 0, "tf_subtype"] call TFAR_fnc_getLrRadioProperty];
[_hintText, _request] call TFAR_fnc_processTangent;
```


---

## `TFAR_fnc_radioOn`
__Description__

Gets the passed radio's on status or switches the radio's status if a boolean is passed as the second parameter.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |STRING|ARRAY |
1 |On Status  |BOOL |false

__Return Value__

Description | Datatype(s)
--- | ---
On Status  | BOOL 

__Example__

```sqf
[call TFAR_fnc_activeSWRadio,true] call TFAR_fnc_radioOn;
```


---

## `TFAR_fnc_radioReplaceProcess`
__Description__

Replaces a player's radios if there are any prototype radios.

__Parameters__

None

__Return Value__

None

__Example__

```sqf
[TFAR_fnc_radioReplaceProcess, 2] call CBA_fnc_addPerFrameHandler;
```


---

## `TFAR_fnc_radiosList`
__Description__

List of all the player's SW radios.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
unit  | OBJECT |  

__Return Value__

Description | Datatype(s)
--- | ---
List of all the player's SW radios.  | ARRAY 

__Example__

```sqf
_radios = TFAR_currentUnit call TFAR_fnc_radiosList;
```


---

## `TFAR_fnc_radiosListSorted`
__Description__

Sorts the SW radio list alphabetically.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Unit  | OBJECT |  

__Return Value__

Description | Datatype(s)
--- | ---
Radio list sorted.  | ARRAY 

__Example__

```sqf
_radios = TFAR_currentUnit call TFAR_fnc_radiosListSorted;
```


---

## `TFAR_fnc_radioToRequestCount`
__Description__

Searches through all the items assigned to and on the player and checks if it is a prototype radio
and then creates an array of all the classnames of the prototype radios and returns it.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Regardless of whether the radio is prototype or not, return it as a radio to be replaced.  | BOOL |  

__Return Value__

Index | Description | Datatype(s) | Default Value
--- | --- | --- | ---
0 | List of all radio classes to be replaced.  | ARRAY | 
1 | List of settings to be copied.  | ARRAY | 
2 | Should the first Item be linked to Radio slot?  | BOOL | 

__Example__

```sqf
(false call TFAR_fnc_radioToRequestCount) params ["_radiosToReplace","_settingsToCopy","_linkFirstItem"];
```


---

## `TFAR_fnc_releaseAllTangents`
__Description__

Stops all outgoing radio transmissions

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
the player  | OBJECT |  

__Return Value__

None

__Example__

```sqf
player call TFAR_fnc_releaseAllTangents;
```


---

## `TFAR_fnc_removeEventHandler`
__Description__

removes an eventhandler

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |custom event ID  |STRING |
1 |event ID  |STRING |

__Return Value__

None

__Example__

```sqf
["MyID", "OnSpeak"] call TFAR_fnc_removeEventHandler;
```


---

## `TFAR_fnc_requestRadios`
__Description__

Checks whether the player needs to have radios converted to "instanced" versions,
handles waiting for response from server with radio classnames and applying them to the player.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Replace already instanced Radios  |BOOL |

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_requestRadios;
```


---

## `TFAR_fnc_sendFrequencyInfo`
__Description__

Notifies the plugin about the radios currently being used by the player and various settings active on the radio.

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_sendFrequencyInfo;
```


---

## `TFAR_fnc_sendPlayerInfo`
__Description__

Notifies the plugin about a player

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Unit  |OBJECT |
1 |Is unit close to player  |BOOL |
2 |Unit name  |STRING |

__Return Value__

None

__Example__

```sqf
[player, true, "Guy"] call TFAR_fnc_sendPlayerInfo;
```


---

## `TFAR_fnc_sendPlayerKilled`
__Description__

Notifies the plugin that a unit has been killed.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
killed unit  | OBJECT |  

__Return Value__

None

__Example__

```sqf
player call TFAR_fnc_sendPlayerKilled;
```


---

## `TFAR_fnc_sendPluginConfig`
__Description__

transmitts all pluginsettings to plugin

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_sendPluginConfig;
```


---

## `TFAR_fnc_sendSpeakerRadios`
__Description__

sends infos about speakerradios to plugin

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_sendSpeakerRadios;
```


---

## `TFAR_fnc_setActiveLrRadio`
__Description__

Sets the active LR radio to the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |OBJECT |
1 |Radio ID  |OBJECT |

__Return Value__

None

__Example__

```sqf
TF_lr_dialog_radio call TFAR_fnc_setActiveLrRadio;
```


---

## `TFAR_fnc_setActiveSwRadio`
__Description__

Sets the active SR radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio ID  |STRING |

__Return Value__

None

__Example__

```sqf
"TFAR_anprc148jem_1" call TFAR_fnc_setActiveSwRadio;
```


---

## `TFAR_fnc_setAdditionalLrChannel`
__Description__

Sets the radio to the passed channel or disables it (if current additional passed).

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |LR Radio  |ARRAY |
1 |Channel Range (0,8)  |NUMBER |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeLrRadio, 4] call TFAR_fnc_setAdditionalLrChannel;
```


---

## `TFAR_fnc_setAdditionalLrStereo`
__Description__

Sets the stereo setting for additional channel the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |LR Radio  |ARRAY |
1 |Stereo setting  Range (0,2) (0 - Both, 1 - Left, 2 - Right))  |NUMBER |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeLrRadio, 1] call TFAR_fnc_setAdditionalLrStereo;
```


---

## `TFAR_fnc_setAdditionalSwChannel`
__Description__

Sets the additional channel for the passed radio or disables it (if additional channel in arguments).

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |
1 |0-based Channel number  |NUMBER |

__Return Value__

None

__Example__

```sqf
// SW Radio - Channel 2
[(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_setAdditionalSwChannel;
```


---

## `TFAR_fnc_setAdditionalSwStereo`
__Description__

Sets the stereo setting for additional channel the SW radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |STRING |
1 |Stereo Range (0,2) (0 - Both, 1 - Left, 2 - Right)  |NUMBER |

__Return Value__

None

__Example__

```sqf
[(call TFAR_fnc_activeSWRadio), 2] call TFAR_fnc_setAdditionalSwStereo;
```


---

## `TFAR_fnc_setChannelFrequency`
__Description__

Sets the frequency for the channel on the passed radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |ARRAY|STRING |
1 |1-based Channel number  |NUMBER |
2 |Frequency  |STRING |

__Return Value__

None

__Example__

```sqf
// LR radio - channel 1
[(call TFAR_fnc_activeLrRadio), 1, "56.2"] call TFAR_fnc_setChannelFrequency;
// SW radio - channel 1
[(call TFAR_fnc_activeSwRadio), 1, "84.3"] call TFAR_fnc_setChannelFrequency;
```


---

## `TFAR_fnc_setChannelViaDialog`
__Description__

Sets the channel of the current Dialog radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Mouse button pressed (0,1)  |NUMBER |
1 |LR radio  |BOOL |
2 |Update formatting.  |STRING |nil

__Return Value__

None

__Example__

```sqf
// LR radio
[_this select 1, true] call TFAR_fnc_setChannelViaDialog;
// SW radio
[_this select 1, false] call TFAR_fnc_setChannelViaDialog;
```


---

## `TFAR_fnc_setHeadsetLowered`
__Description__

Sets if the Headset is currently lowered

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Headset lowered  |BOOL |

__Return Value__

None

__Example__

```sqf
true call TFAR_fnc_setHeadsetLowered;
```


---

## `TFAR_fnc_setLongRangeRadioFrequency`
__Description__

Sets the frequency for the active channel on the active LR radio.

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Frequency  | STRING |  

__Return Value__

None

__Example__

```sqf
"45.48" call TFAR_fnc_setLongRangeRadioFrequency;
```


---

## `TFAR_fnc_setLrChannel`
__Description__

Sets the radio to the passed channel

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |LR Radio  |ARRAY |
1 |Channel Range (0,8)  |NUMBER |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeLrRadio, 4] call TFAR_fnc_setLrChannel;
```


---

## `TFAR_fnc_setLrFrequency`
__Description__

set the LR frequency

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |LR Radio  |ARRAY |
1 |Frequency  |STRING |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeLrRadio, "45.48"] call TFAR_fnc_setLrFrequency;
```


---

## `TFAR_fnc_setLrRadioCode`
__Description__

Allows setting of the encryption code for individual radios.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |LR Radio  |ARRAY |
1 |encryption Code  |STRING |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeLrRadio, "NewEncryptionCode"] call TFAR_fnc_setLrRadioCode;
```


---

## `TFAR_fnc_setLrSettings`
__Description__

Saves the settings for the passed radio and broadcasts it to all clients and the server.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |
2 |Settings, usually acquired via TFAR_fnc_getLrSettings and then changed.  |ARRAY |

__Return Value__

None

__Example__

```sqf
_settings = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getSwSettings;
_settings set [0, 2]; // sets the active channel to 2
[call TFAR_fnc_activeLrRadio, _settings] call TFAR_fnc_setLrSettings;
```


---

## `TFAR_fnc_setLrSpeakers`
__Description__

Sets the speakers setting for the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio object  |OBJECT |
1 |Radio ID  |STRING |

__Return Value__

None

__Example__

```sqf
(call TFAR_fnc_activeLrRadio) call TFAR_fnc_setLrSpeakers;
```


---

## `TFAR_fnc_setLrStereo`
__Description__

Sets the stereo setting for the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |LR Radio  |ARRAY |
1 | Stereo setting  Range (0,2) (0 - Both, 1 - Left, 2 - Right)  |NUMBER |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeLrRadio, 1] call TFAR_fnc_setLrStereo;
```


---

## `TFAR_fnc_setLrVolume`
__Description__

Sets the volume for the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |LR Radio  |ARRAY |
1 |Volume Range (0,10)  |NUMBER |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeLrRadio, 5] call TFAR_fnc_setLrVolume;
```


---

## `TFAR_fnc_setPersonalRadioFrequency`
__Description__

Sets the frequency for the active SW radio to passed frequency

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Frequency  | STRING |  

__Return Value__

None

__Example__

```sqf
"65.12" call TFAR_fnc_setPersonalRadioFrequency;
```


---

## `TFAR_fnc_setPluginSetting`
__Description__

Sets a teamspeak plugin config variable

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |setting name  |STRING |
1 |value  |STRING|BOOL|SCALAR |

__Return Value__

None

__Example__

```sqf
["half_duplex",true] call TFAR_fnc_setPluginSetting;
```


---

## `TFAR_fnc_setRadioOwner`
__Description__

Sets the owner of a SW radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |radio classname  |STRING |
1 |UID of owner  |STRING |
2 |Local only  |BOOL |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeSwRadio, getPlayerUID player] call TFAR_fnc_setRadioOwner;
```


---

## `TFAR_fnc_setSwChannel`
__Description__

Sets the channel for the passed radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |
1 |Channel  |STRING |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeSwRadio, 2] call TFAR_fnc_setSwChannel;
```


---

## `TFAR_fnc_setSwFrequency`
__Description__

Sets the frequency for the currently active channel

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |
1 |Frequency  |STRING |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeSwRadio, "76.2"] call TFAR_fnc_setSwFrequency;
```


---

## `TFAR_fnc_setSwRadioCode`
__Description__

Allows setting of the encryption code for individual radios.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |
1 |Encryption code  |STRING |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeSwRadio, "NewEncryptionCode"] call TFAR_fnc_setSwRadioCode;
```


---

## `TFAR_fnc_setSwSettings`
__Description__

Saves the settings for the passed radio and broadcasts it to all clients and the server.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio classname  |STRING |
1 |Settings, usually acquired via TFAR_fnc_getSwSettings and then changed.  |ARRAY |
2 |Set local only  |BOOL |

__Return Value__

None

__Example__

```sqf
_settings = (call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwSettings;
_settings set [0, 2]; // sets the active channel to 2
[call TFAR_fnc_activeSwRadio, _settings] call TFAR_fnc_setSwSettings;
```


---

## `TFAR_fnc_setSwSpeakers`
__Description__

Sets the speakers setting for the SW radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |STRING |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeSWRadio] call TFAR_fnc_setSwSpeakers;
```


---

## `TFAR_fnc_setSwStereo`
__Description__

Sets the stereo setting for the SW radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |STRING |
1 |Stereo Range (0,2) (0 - Both, 1 - Left, 2 - Right)  |NUMBER |

__Return Value__

Description | Datatype(s)
--- | ---
return name  | TYPENAME 

__Example__

```sqf
[call TFAR_fnc_activeSWRadio, 2] call TFAR_fnc_setSwStereo;
```


---

## `TFAR_fnc_setSwVolume`
__Description__

Sets the volume for the SW radio

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |STRING |
1 |Volume Range (0,10)  |NUMBER |

__Return Value__

None

__Example__

```sqf
[call TFAR_fnc_activeSWRadio, 10] call TFAR_fnc_setSwVolume;
```


---

## `TFAR_fnc_setVoiceVolume`
__Description__

Sets the volume for the player's voice in game

__Parameters__

Description | Datatype(s) | Default value
--- | --- | ---
Volume - Range (0,TF_max_voice_volume)  | NUMBER |  

__Return Value__

None

__Example__

```sqf
30 call TFAR_fnc_setVoiceVolume;
```


---

## `TFAR_fnc_setVolumeViaDialog`
__Description__

sets the volume of the current dialog radio.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Mouse button pressed (0,1)  |NUMBER |
1 |LR radio (0,1)  |BOOL |

__Return Value__

None

__Example__

```sqf
// LR radio
[_this select 1, true] call TFAR_fnc_setVolumeViaDialog;
// SW radio
[_this select 1, false] call TFAR_fnc_setVolumeViaDialog;
```


---

## `TFAR_fnc_showHint`
__Description__

Displays a hint at the bottom right of the screen.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |structured text to display  |TEXT |
1 | Time to display the hint (-1 for infinite)  |SCALAR |

__Return Value__

None

__Example__

```sqf
[parseText "Hello", 3] call TFAR_fnc_showHint;
[parseText "Hello", -1] call TFAR_fnc_showHint;
```


---

## `TFAR_fnc_showRadioInfo`
__Description__

shows the radio info

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |OBJECT|STRING |
1 |is LR radio  |BOOL |

__Return Value__

None

__Example__

```sqf
// LR radio
[(call TFAR_fnc_activeLrRadio), true] call TFAR_fnc_showRadioInfo;
// SW radio
[(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_showRadioInfo;
```


---

## `TFAR_fnc_showRadioSpeakers`
__Description__

shows the speaker hint

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |OBJECT|STRING |

__Return Value__

None

__Example__

```sqf
// LR radio
[(call TFAR_fnc_activeLrRadio)] call TFAR_fnc_showRadioSpeakers;
// SW radio
[(call TFAR_fnc_activeSwRadio)] call TFAR_fnc_showRadioSpeakers;
```


---

## `TFAR_fnc_ShowRadioVolume`
__Description__

shows the radio volume

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Radio  |OBJECT|STRING |

__Return Value__

None

__Example__

```sqf
// LR radio
[(call TFAR_fnc_activeLrRadio)] call TFAR_fnc_showRadioVolume;
// SW radio
[(call TFAR_fnc_activeSwRadio)] call TFAR_fnc_showRadioVolume;
```


---

## `TFAR_fnc_updateLRDialogToChannel`
__Description__

Updates the LR dialog to the channel if switched.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Format to display channel with. Requires %1.  |STRING |"CH:%1"

__Return Value__

None

__Example__

```sqf
// No custom format.
call TFAR_fnc_updateLRDialogToChannel;
// Custom format
["CH: %1"] call TFAR_fnc_updateLRDialogToChannel;
```


---

## `TFAR_fnc_updateSpeakVolumeUI`
__Description__

Updates UI speak volume indicator

__Parameters__

None

__Return Value__

None

__Example__

```sqf
call TFAR_fnc_updateSpeakVolumeUI;
```


---

## `TFAR_fnc_updateSWDialogToChannel`
__Description__

Updates the SR dialog to the channel if switched.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |Format to display channel with. Requires %1.  |STRING |"C%1"

__Return Value__

None

__Example__

```sqf
// No custom format.
call TFAR_fnc_updateSWDialogToChannel;
// Custom format
["CH: %1"] call TFAR_fnc_updateSWDialogToChannel;
```


---

## `TFAR_fnc_vehicleId`
__Description__

Returns a string with information about the player vehicle, used at the plugin side.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |The unit to check.  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
NetworkID, Turned out  | STRING 

__Example__

```sqf
_vehicleID = player call TFAR_fnc_vehicleID;
```


---

## `TFAR_fnc_vehicleIsIsolatedAndInside`
__Description__

Checks whether a unit is in an isolated vehicle and not turned out.

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |The unit to check.  |OBJECT |

__Return Value__

Description | Datatype(s)
--- | ---
True if isolated and not turned out, false if turned out or vehicle is not isolated.  | BOOL 

__Example__

```sqf
_isolated = player call TFAR_fnc_vehicleIsIsolatedAndInside;
```


---

## `TFAR_fnc_vehicleLr`
__Description__

Gets the LR radio of the vehicle and the settings for it depending on the player's position within the vehicle
returns nil, if no Vehicle radio was found

__Parameters__

Index |Description |Datatype(s) |Default Value
--- | --- | --- | ---
0 |unit  |OBJECT |

__Return Value__

Index | Description | Datatype(s) | Default Value
--- | --- | --- | ---
0 | Vehicle  | OBJECT | 
1 | Radio Settings ID  | STRING | 

__Example__

```sqf
_radio = player call TFAR_fnc_VehicleLR;
```


---
