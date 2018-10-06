/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Removes the given amount of the selected item in the crate.

    Parameter(s):
    0 : SCALAR - Amount of the removed item.

    Returns:
    NONE
*/

params [
    "_amount"
];

private _dialog = findDisplay 758067;
private _ctrlCrate = _dialog displayCtrl 75801;
private _ctrlCat = _dialog displayCtrl 75802;
private _ctrlWeapon = _dialog displayCtrl 75803;
private _ctrlEquipment = _dialog displayCtrl 75804;

private _index = lbCurSel _ctrlEquipment;

// Check for empty selection
if (_index == -1) exitWith {};

// Item selection
private _item = (KPCF_activeCategory select _index);

// Add the given item
KPCF_activeCrate removeItem _item;
