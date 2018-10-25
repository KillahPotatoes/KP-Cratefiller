/*
    Killah Potatoes Cratefiller v1.1.0

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
private _weaponType = _ctrlWeapon lbData _weaponIndex;

// Get compatible magazines
private _config = [_weaponType] call KPCF_fnc_getConfigPath;
private _magazines = getArray (configFile >> _config >> _weaponType >> "magazines");
private _sortedMagazines = [_magazines] call KPCF_fnc_sortList;

private _index = 0;

// Fill controls
{
    _index = _ctrlEquipment lbAdd (_x select 0);
    _ctrlEquipment lbSetData [_index , _x select 1];
} forEach _sortedMagazines;
