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

// Read the export name
private _exportName = ctrlText _ctrlExport;

// Save the inventory into profileNamespace
profileNamespace setVariable ["KPCF_preset", [_exportName, KPCF_inventory]];
saveProfileNamespace;

call KPCF_fnc_showPresets;
