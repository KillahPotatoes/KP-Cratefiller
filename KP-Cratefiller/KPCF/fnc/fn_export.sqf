/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Exports the active inventory.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Dialog controls
private _dialog = findDisplay 758067;
private _ctrlExport = _dialog displayCtrl 75820;

// Read the presets from profileNamespace
private _preset = profileNamespace getVariable ["KPCF_preset", []];

// Read the export name
private _exportName = ctrlText _ctrlExport;

if (_exportName == "") exitWith {
    hint localize "STR_KPCF_HINTNAME";
    [{hintSilent "";}, [], 3] call CBA_fnc_waitAndExecute;
};

// Check if the variable is empty
if (_preset isEqualTo []) exitWith {
    _preset = [[_exportName, KPCF_inventory]];
    // Save the inventory into profileNamespace
    profileNamespace setVariable ["KPCF_preset", _preset];
    saveProfileNamespace;
};

// Check if the exportname already exists
private _index = _preset findIf {(_x select 0) isEqualTo _exportName};

_preset deleteAt _index;

// Save the inventory into profileNamespace
_preset pushBack [_exportName, KPCF_inventory];

profileNamespace setVariable ["KPCF_preset", _preset];
saveProfileNamespace;

call KPCF_fnc_showPresets;
