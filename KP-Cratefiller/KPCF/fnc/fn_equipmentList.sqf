/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Changes the shown equipment category.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Dialog controls
private _dialog = findDisplay 758067;
private _ctrlCat = _dialog displayCtrl 75802;
private _ctrlWeapon = _dialog displayCtrl 75803;
private _ctrlEquipment = _dialog displayCtrl 75804;

// Clear the lists
lbClear _ctrlWeapon;
lbClear _ctrlEquipment;

// Read the combobox
private _catIndex = lbCurSel _ctrlCat;

// Check for empty selection
if (_catIndex == -1) exitWith {};

// Weapons
if (_catIndex == 0) then {
{
    _ctrlEquipment lbAdd (getText (configFile >> "CfgWeapons" >> _x >> "displayName"));
} forEach KPCF_weapons;
};

// Magazines
if (_catIndex == 1) then {
{
    _ctrlWeapon lbAdd (getText (configFile >> "CfgWeapons" >> _x >> "displayName"));
} forEach KPCF_weapons;
};

// Grenades
if (_catIndex == 2) then {
{
    _ctrlEquipment lbAdd (getText (configFile >> "CfgMagazines" >> _x >> "displayName"));
} forEach KPCF_grenades;
};

// Items
if (_catIndex == 3) then {
{
    _ctrlEquipment lbAdd (getText (configFile >> "CfgWeapons" >> _x >> "displayName"));
} forEach KPCF_items;
};
