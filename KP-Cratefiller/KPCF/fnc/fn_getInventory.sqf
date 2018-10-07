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
private _ctrlCargo = _dialog displayCtrl 75802;
private _ctrlCat = _dialog displayCtrl 75810;
private _ctrlWeapon = _dialog displayCtrl 75811;
private _ctrlEquipment = _dialog displayCtrl 75812;
private _ctrlInventory = _dialog displayCtrl 75820;

if (KPCF_activeCrate == objNull) exitWith {};
systemchat "Gestartet";

KPCF_inventory = [];
KPCF_inventoryAmount = [];

private _item = getItemCargo KPCF_activeCrate;
private _weapon = getWeaponCargo KPCF_activeCrate;
private _magazine = getMagazineCargo KPCF_activeCrate;
systemchat format ["%1", _item];
systemchat format ["%1", _weapon];
systemchat format ["%1", _magazine];

private _cargo = _item;
(_cargo select 0) append (_weapon select 0);
(_cargo select 1) append (_weapon select 1);
(_cargo select 0) append (_magazine select 0);
(_cargo select 1) append (_magazine select 1);

systemchat format ["%1", _cargo];

private _count = count (_cargo select 0);

systemchat format ["%1", _count];

// Adapt the cargo into KPCF variable
for "_i" from 0 to (_count-1) do {
    systemchat format ["%1", _i];
    KPCF_inventory pushBack ((_cargo select 0) select _i);
    KPCF_inventoryAmount pushBack ((_cargo select 1) select _i);
};

call KPCF_fnc_showInventory;
