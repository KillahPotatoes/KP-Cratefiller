/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Displays the items of the active crate.

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

lbClear _ctrlInventory;
lbClear _ctrlInventoryAmount;

{
    private _config = [_x] call KPCF_fnc_getConfigPath;
    _ctrlInventory lbAdd (getText (configFile >> _config >> _x >> "displayName"));
} forEach KPCF_inventory;

{
    _ctrlInventoryAmount lbAdd str _x;
} forEach KPCF_inventoryAmount;
