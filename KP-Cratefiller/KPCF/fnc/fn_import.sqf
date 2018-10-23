/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Imports the selected inventory.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Dialog controls
private _dialog = findDisplay 758067;
private _ctrlImport = _dialog displayCtrl 75821;

// Check if there's an active storage
if (isNull KPCF_activeStorage) exitWith {
    hint localize "STR_KPCF_HINTNOSTORAGE";
    [{hintSilent "";}, [], 3] call CBA_fnc_waitAndExecute;
};

// Read the export name
private _index = lbCurSel _ctrlImport;
private _importName = _ctrlImport lbText _index;

// Save the inventory into profileNamespace
private _import = profileNamespace getVariable "KPCF_preset";

If (_importName == (_import select 0)) then {
    KPCF_inventory append (_import select 1);
};

[] call KPCF_fnc_setInventory;
