#include "..\ui\defines.hpp"
#include "script_component.hpp"
/*
    Killah Potatoes Cratefiller v1.2.0

    KP_fnc_cratefiller_openDialog

    File: fn_cratefiller_openDialog.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2020-01-21
    Last Update: 2020-01-21
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Opens the cratefiller dialog.

    Parameter(s):
        _data - gets all data from the used base object [ARRAY, defaults to []]

    Returns:
        Function reached the end [BOOL]
*/
params [
    ["_data", [], [[]]]
];

// Get the cratefiller object and store it
CCSVAR("object", _data select 0, false);

// Create dialog
createDialog "KP_cratefiller";
disableSerialization;

// Dialog controls
private _dialog = findDisplay KPCF_IDC_DIALOG;
private _ctrlCategory = _dialog displayCtrl KPCF_IDC_COMBOEQUIPMENT;
private _ctrlWeapon = _dialog displayCtrl KPCF_IDC_COMBOWEAPONS;
private _ctrlSearch = _dialog displayCtrl KPCF_IDC_SEARCHBAR;
private _ctrlOverviewGroup = _dialog displayCtrl KPCF_IDC_GROUPOVERVIEW;
private _ctrlToggleOverview = _dialog displayCtrl KPCF_IDC_BUTTONOVERVIEW;

// Hide controls
_ctrlWeapon ctrlShow false;
_ctrlSearch ctrlShow false;
_ctrlOverviewGroup ctrlShow false;

// Disable the tools button on deactivation
if !(KP_param_cratefiller_cratefillerOverview) then {
    _ctrlToggleOverview ctrlShow false;
};

// Reset variables
_ctrlCategory lbAdd localize "STR_KP_CRATEFILLER_LISTWEAPONS";
_ctrlCategory lbAdd localize "STR_KP_CRATEFILLER_LISTMAGAZINES";
_ctrlCategory lbAdd localize "STR_KP_CRATEFILLER_LISTATTACHMENTS";
_ctrlCategory lbAdd localize "STR_KP_CRATEFILLER_LISTGRENADES";
_ctrlCategory lbAdd localize "STR_KP_CRATEFILLER_LISTEXPLOSIVES";
_ctrlCategory lbAdd localize "STR_KP_CRATEFILLER_LISTVARIOUS";
_ctrlCategory lbAdd localize "STR_KP_CRATEFILLER_LISTBACKPACKS";

//[] call KP_fnc_cratefiller_showPresets;
[] call KP_fnc_cratefiller_getNearStorages;

true
