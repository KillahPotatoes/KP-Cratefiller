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
private _ctrlCrate = _dialog displayCtrl 75801;
private _ctrlStorage = _dialog displayCtrl 75802;
private _ctrlCat = _dialog displayCtrl 75810;
private _ctrlWeapon = _dialog displayCtrl 75811;
private _ctrlEquipment = _dialog displayCtrl 75812;
private _ctrlInventory = _dialog displayCtrl 75820;
private _ctrlInventoryAmount = _dialog displayCtrl 75821;

// Clear the lists
lbClear _ctrlWeapon;
lbClear _ctrlEquipment;

KPCF_activeCategory = [];

_ctrlWeapon ctrlShow false;

// Read the combobox
private _catIndex = lbCurSel _ctrlCat;

// Check for empty selection
if (_catIndex == -1) exitWith {};

// Weapons
if (_catIndex == 0) then {
    KPCF_activeCategory = KPCF_weapons;
    {
        private _config = [_x] call KPCF_fnc_getConfigPath;
        _ctrlEquipment lbAdd (getText (configFile >> _config >> _x >> "displayName"));
    } forEach KPCF_weapons;
};

// Magazines
if (_catIndex == 1) then {
    _ctrlWeapon ctrlShow true;
    {
        private _config = [_x] call KPCF_fnc_getConfigPath;
        _ctrlWeapon lbAdd (getText (configFile >> _config >> _x >> "displayName"));
    } forEach KPCF_weapons;
};

// Grenades
if (_catIndex == 2) then {
    KPCF_activeCategory = KPCF_grenades;
    {
        private _config = [_x] call KPCF_fnc_getConfigPath;
        _ctrlEquipment lbAdd (getText (configFile >> _config >> _x >> "displayName"));
    } forEach KPCF_grenades;
};

// Explosives
if (_catIndex == 3) then {
    KPCF_activeCategory = KPCF_explosives;
    {
        private _config = [_x] call KPCF_fnc_getConfigPath;
        _ctrlEquipment lbAdd (getText (configFile >> _config >> _x >> "displayName"));
    } forEach KPCF_explosives;
};

// Items
if (_catIndex == 4) then {
    KPCF_activeCategory = KPCF_items;
    {
        private _config = [_x] call KPCF_fnc_getConfigPath;
        _ctrlEquipment lbAdd (getText (configFile >> _config >> _x >> "displayName"));
    } forEach KPCF_items;
};
