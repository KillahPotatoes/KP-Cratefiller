/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Gets all inventory items of the active crate.

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

if (isNull KPCF_activeStorage) exitWith {};

KPCF_inventory = [];

private _item = getItemCargo KPCF_activeStorage;
private _weapon = getWeaponCargo KPCF_activeStorage;
private _magazine = getMagazineCargo KPCF_activeStorage;

private _cargo = _item;
(_cargo select 0) append (_weapon select 0);
(_cargo select 1) append (_weapon select 1);
(_cargo select 0) append (_magazine select 0);
(_cargo select 1) append (_magazine select 1);

private _count = count (_cargo select 0);

// Adapt the cargo into KPCF variable
for "_i" from 0 to (_count-1) do {
    KPCF_inventory pushBack [(_cargo select 0) select _i, (_cargo select 1) select _i];
};

call KPCF_fnc_showInventory;
