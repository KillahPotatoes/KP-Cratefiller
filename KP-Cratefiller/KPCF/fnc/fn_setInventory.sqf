/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Adds the items to the active crate.

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

// Check if the storage will be empty
if (count KPCF_inventory == 0) exitWith {
    clearWeaponCargoGlobal KPCF_activeStorage;
    clearMagazineCargoGlobal KPCF_activeStorage;
    clearItemCargoGlobal KPCF_activeStorage;
    clearBackpackCargoGlobal KPCF_activeStorage;
    call KPCF_fnc_getInventory;
};

clearWeaponCargoGlobal KPCF_activeStorage;
clearMagazineCargoGlobal KPCF_activeStorage;
clearItemCargoGlobal KPCF_activeStorage;
clearBackpackCargoGlobal KPCF_activeStorage;

private _count = count KPCF_inventory;

// Adapt the cargo into KPCF variable
for "_i" from 0 to (_count-1) do {
    KPCF_activeStorage addItemCargoGlobal [KPCF_inventory select _i, KPCF_inventoryAmount select _i];
};

call KPCF_fnc_getInventory;
