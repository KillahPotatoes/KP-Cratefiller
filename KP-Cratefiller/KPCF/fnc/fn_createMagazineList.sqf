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
private _ctrlWeapon = _dialog displayCtrl 75811;
private _ctrlEquipment = _dialog displayCtrl 75812;

// Clear the lists
lbClear _ctrlEquipment;

// Reset variables
KPCF_activeCategory = [];

// Read controls
private _weaponIndex = lbCurSel _ctrlWeapon;

// Check for empty selection
if (_weaponIndex == -1) exitWith {
    hint localize "STR_KPCF_HINTSELECTION";
    [{hintSilent "";}, [], 3] call CBA_fnc_waitAndExecute;
};

// Weapon selection
private _weaponType = (KPCF_weapons select _weaponIndex);

// Get compatible magazines
private _config = [_weaponType] call KPCF_fnc_getConfigPath;
private _tempMagazines = getArray (configFile >> _config >> _weaponType >> "magazines");
KPCF_activeCategory = _tempMagazines;

// Fill controls
{
    private _config = [_x] call KPCF_fnc_getConfigPath;
    _ctrlEquipment lbAdd (getText (configFile >> _config >> _x >> "displayName"));
} forEach _tempMagazines;
