/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Scans the spawn area for possible storages.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Dialog controls
private _dialog = findDisplay 758067;
private _ctrlCrate = _dialog displayCtrl 75801;
private _ctrlStorage = _dialog displayCtrl 75802;
private _ctrlCat = _dialog displayCtrl 75810;
private _ctrlWeapon = _dialog displayCtrl 75811;
private _ctrlEquipment = _dialog displayCtrl 75812;
private _ctrlInventory = _dialog displayCtrl 75820;
private _ctrlInventoryAmount = _dialog displayCtrl 75821;

KPCF_near_storage = [];

lbClear _ctrlStorage;

{
    if (_x canAdd "Item_FirstAidKit") then {
        KPCF_near_storage pushBack _x;
    };
} forEach (nearestObjects [getPos KPCF_cratefiller_spawn, [], KPCF_spawn_radius]);

// Fill the list
{
    private _y = typeOf _x;
    private _config = [_y] call KPCF_fnc_getConfigPath;
    _ctrlStorage lbAdd format ["%1m - %2", floor (KPCF_cratefiller_spawn distance2D KPCF_activeStorage), getText (configFile >> _config >> _y >> "displayName")];
} forEach KPCF_near_storage;

// Check if dialog is closed
if (isNull _dialog) exitWith {};

[{call KPCF_fnc_getNearStorages;}, [], 10] call CBA_fnc_waitAndExecute;
