/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Reads and defines the active inventory from the Dialog.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Dialog controls
private _dialog = findDisplay 758067;
private _ctrlStorage = _dialog displayCtrl 75802;

// Read controls
private _storageIndex = lbCurSel _ctrlStorage;

// Check for empty selection
if (_storageIndex == -1) exitWith {};

// Define active Storage
KPCF_activeStorage = KPCF_nearStorage select _storageIndex;

call KPCF_fnc_getInventory;
