
#include "..\ui\defines.hpp"
#include "script_component.hpp"
/*
    Killah Potatoes Cratefiller v1.2.0

    KP_fnc_cratefiller_getNearStorages

    File: fn_cratefiller_getNearStorages.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2020-01-21
    Last Update: 2020-02-05
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Scans for possible storages.

    Parameter(s):
        NONE

    Returns:
        Function reached the end [BOOL]
*/

// Dialog controls
private _dialog = findDisplay KPCF_IDC_DIALOG;
private _ctrlStorage = _dialog displayCtrl KPCF_IDC_COMBOSTORAGE;

// Clear the lists
lbClear _ctrlStorage;

// Variables
private _type = objNull;
private _config = "";
private _number = 0;
private _index = 0;
private _picture = "";
private _blacklist = [
    "GroundWeaponHolder",
    "WeaponHolderSimulated",
    ""
];
private _objects = CCGVAR("object", objNull) nearObjects KP_param_cratefiller_usageRadius;

// Get near objects and check for storage capacity
{
    _type = typeOf _x;
    _config = [_type] call KP_fnc_cratefiller_getConfigPath;
    _number = getNumber (_config >> "maximumLoad");
    // If the object has an inventory add it to the list
    if (_number > 0) then {
        _index = _ctrlStorage lbAdd format ["%1m - %2", round ((getPos player) distance2D _x), getText (_config >> "displayName")];
        _ctrlStorage lbSetData [_index, netId _x];
        _picture = getText (_config >> "picture");
        if (_picture isEqualTo "pictureThing") then {
            _ctrlStorage lbSetPicture [_index, "KPGUI\res\icon_help.paa"];
        } else {
            _ctrlStorage lbSetPicture [_index, _picture];
        };
    };
} forEach (_objects select {!(typeOf _x in _blacklist) && !((typeOf _x select [0,1]) isEqualTo "#") && !(_x isKindOf "Building")});


true
