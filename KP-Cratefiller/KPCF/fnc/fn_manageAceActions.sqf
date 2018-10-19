/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Adds actions to the cratefiller objects.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

private _foundBase = [];

{
    _foundBase append ((getPos player) nearObjects [_x, KPCF_checkDistance]);
} forEach KPCF_cratefillerBase;

private ["_action"];

// Add the action
{
    if (!(_x in KPCF_usedBase)) then {
        _action = ["KPCF", localize "STR_KPCF_TITLE", "kplogo_ca.paa", {[_this] call KPCF_fnc_openDialog;}, {true}] call ace_interact_menu_fnc_createAction;
        [_x, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
        KPCF_usedBase pushBack _x;
    };
} forEach _foundBase;

[{[] call KPCF_fnc_manageActions;}, [], 30] call CBA_fnc_waitAndExecute;
