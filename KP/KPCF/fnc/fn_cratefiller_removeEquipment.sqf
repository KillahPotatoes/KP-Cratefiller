#include "..\ui\defines.hpp"
#include "script_component.hpp"
/*
    Killah Potatoes Cratefiller v1.2.0

    KP_fnc_cratefiller_removeEquipment

    File: fn_cratefiller_removeEquipment.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2020-02-05
    Last Update: 2020-02-05
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Removes one of the selected item from the storage.

    Parameter(s):
        _controlId - Id of the control which is selected [NUMBER, defaults to 0]

    Returns:
        Function reached the end [BOOL]
*/

params [
    ["_controlId", 0, [0]]
];

// Dialog controls
private _dialog = findDisplay KP_CRATEFILLER_IDC_DIALOG;
private _ctrlActive = _dialog displayCtrl _controlId;

// Read controls
private _indexActive = lbCurSel _ctrlActive;

// Get the storage object
private _storage = [] call KP_fnc_cratefiller_getStorage;

// Get the storage inventory
private _inventory = [] call KP_fnc_cratefiller_getInventory;

// Variables
private _item = "";
private _index = 0;

// Check for empty selection
if (_indexActive isEqualTo -1 || ((lnbSize _ctrlActive) select 0) isEqualTo 0) exitWith {
    [localize "STR_KP_CRATEFILLER_HINTSELECTION"] call CBA_fnc_notify;
};

if (_controlId isEqualTo KP_CRATEFILLER_IDC_INVENTORYLIST) then {
    // Item selection
    _item = ((_inventory select _indexActive) select 1);

    // Modify array
    (_inventory select _indexActive) set [2, (((_inventory select _indexActive) select 2) - 1)];
} else {
    private _cat = CCGVAR("activeCat", "");
    private _catStuff = CGVAR(_cat, []);
    _item = (_catStuff select _indexActive) select 1;
    _index = _inventory findIf {(_x select 1) isEqualTo _item};
    if (_index isEqualTo -1) exitWith {};
    // Modify array
    (_inventory select _index) set [2, ((_inventory select _index) select 2) - 1];
};

// Exit the function if nothing changed
if (_index isEqualTo -1) exitWith {};

// Apply the changed inventory
[_inventory] call KP_fnc_cratefiller_setInventory;

private _config = [_item] call KP_fnc_cratefiller_getConfigPath;
private _name = (getText (_config >> "displayName"));
private _picture = (getText (_config >> "picture"));
CBA_ui_notifyQueue = [];
[
    [_picture, 2],
    [format [localize "STR_KP_CRATEFILLER_HINTUNLOAD", _name, 1]]
] call CBA_fnc_notify;

true
