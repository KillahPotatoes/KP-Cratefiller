#include "..\ui\defines.hpp"
/*
    Killah Potatoes Cratefiller v1.2.0

    KP_fnc_cratefiller_getStorage

    File: fn_cratefiller_getStorage.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2020-02-05
    Last Update: 2020-02-05
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Returns the active storage.

    Parameter(s):
        NONE

    Returns:
        Active Storage [OBJECT]
*/

// Dialog controls
private _dialog = findDisplay KPCF_IDC_DIALOG;
private _ctrlStorage = _dialog displayCtrl KPCF_IDC_COMBOSTORAGE;

// Read controls
private _storageIndex = lbCurSel _ctrlStorage;

// Check for empty variable
if (_storageIndex isEqualTo -1) exitWith {
    objNull
};

// Get the storage object
private _storage = objectFromNetId (_ctrlStorage lbData _storageIndex);

_storage
