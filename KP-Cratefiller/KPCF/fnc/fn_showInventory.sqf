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
private _ctrlInventory = _dialog displayCtrl 75820;
private _ctrlInventoryAmount = _dialog displayCtrl 75821;

// Reset variables
lbClear _ctrlInventory;
lbClear _ctrlInventoryAmount;

// Fill the controls
{
    private _config = [_x select 0] call KPCF_fnc_getConfigPath;
    _ctrlInventory lbAdd (getText (configFile >> _config >> _x select 0 >> "displayName"));
    _ctrlInventoryAmount lbAdd str (_x select 1);
} forEach KPCF_inventory;
