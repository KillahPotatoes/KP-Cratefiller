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
private _ctrlWeapon = _dialog displayCtrl 75803;
private _ctrlEquipment = _dialog displayCtrl 75804;

// Clear the lists
lbClear _ctrlEquipment;

// Read the combobox
private _weaponIndex = lbCurSel _ctrlWeapon;

// Check for empty selection
if (_weaponIndex == -1) exitWith {};

// Weapon selection
private _weaponType = (KPCF_weapons select _weaponIndex);

// Get compatible magazines
KPCF_temp_magazines = getArray (configFile >> "CfgWeapons" >> _weaponType >> "magazines");

// Fill the list
{
    _ctrlEquipment lbAdd (getText (configFile >> "CfgMagazines" >> _x >> "displayName"));
} forEach KPCF_temp_magazines;
