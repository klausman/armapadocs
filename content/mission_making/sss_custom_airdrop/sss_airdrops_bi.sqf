// Custom Airdrops for Simplex Support Services
// Author: klausman
// License: Apache 2 (https://www.apache.org/licenses/LICENSE-2.0)
//
// There is no need to edit this file. For more info see sss_airdrops.sqf

private ["_box", "_boxidx", "_boxdef", "_mags", "_weaps", "_items", "_boxes", "_smokes", "_packs"];

_box = _this select 0;
_boxidx = _this select 1;
_boxes = _this select 2;

_boxdef = _boxes select _boxidx;

_mags = _boxdef select 4;
_weaps = _boxdef select 5;
_items = _boxdef select 6;
_packs = _boxdef select 7;

[format ["Intializing box %1 (type %2, %3)", _box, _boxidx, _boxdef], "SSS CADS", [false, true, false]] call CBA_fnc_debug;

clearItemCargoGlobal     _box;
clearWeaponCargoGlobal   _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;

{_box addMagazineCargoGlobal _x;} foreach _mags;
  {_box addWeaponCargoGlobal _x;} foreach _weaps;
    {_box addItemCargoGlobal _x;} foreach _items;
{_box addBackpackCargoGlobal _x;} foreach _packs;

_smokes =  _boxdef select 3;
if (count _smokes > 0) then {
  [
   {isNull (_this select 0)|| {getPos (_this select 0) select 2 < 2}},  // Condition
   { // Code
    private _pos = getpos (_this select 0);
    private _smks = _this select 1;
    [format ["Popping smoke at %1 (one each of %2)", _pos, _smks], "SSS CADS", [false, true, true]] call CBA_fnc_debug;
    {_x createVehicle _pos;} foreach _smks;
   },
   [_this select 0, _smokes]] // Params
   call CBA_fnc_waitUntilAndExecute;
};
