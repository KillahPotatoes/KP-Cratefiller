/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Deletes the nearest crate.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Check for empty variable
if (isNull KPCF_activeStorage) exitWith {
    hint localize "STR_KPCF_HINTSELECTION";
    [{hintSilent "";}, [], 3] call CBA_fnc_waitAndExecute;
};

// Check if the active storage is a pre defined crate
if (!((typeOf KPCF_activeStorage) in KPCF_crates)) exitWith {
    hint localize "STR_KPCF_HINTNONDELETEABLE";
    [{hintSilent "";}, [], 3] call CBA_fnc_waitAndExecute;
};

// Delete crate
deleteVehicle KPCF_activeStorage;

KPCF_activeStorage = objNull;

remoteExecCall ["KPCF_fnc_getInventory", (allPlayers - entities "HeadlessClient_F")];

private _config = [typeOf KPCF_activeStorage] call KPCF_fnc_getConfigPath;
private _name = (getText (configFile >> _config >> typeOf KPCF_activeStorage >> "displayName"));
hint format [localize "STR_KPCF_HINTDELETE", _name];
[{hintSilent "";}, [], 3] call CBA_fnc_waitAndExecute;
