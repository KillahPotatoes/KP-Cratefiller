/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Changes the shown magazines.

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

// Clear the lists
lbClear _ctrlEquipment;
KPCF_activeCategory = [];

// Read the combobox
private _weaponIndex = lbCurSel _ctrlWeapon;

// Check for empty selection
if (_weaponIndex == -1) exitWith {};

// Weapon selection
private _weaponType = (KPCF_weapons select _weaponIndex);

// Get compatible magazines
private _config = [_weaponType] call KPCF_fnc_getConfigPath;
KPCF_tempMagazines = getArray (configFile >> _config >> _weaponType >> "magazines");
KPCF_activeCategory = KPCF_tempMagazines;

// Fill the list
{
    private _config = [_x] call KPCF_fnc_getConfigPath;
    _ctrlEquipment lbAdd (getText (configFile >> _config >> _x >> "displayName"));
} forEach KPCF_tempMagazines;
