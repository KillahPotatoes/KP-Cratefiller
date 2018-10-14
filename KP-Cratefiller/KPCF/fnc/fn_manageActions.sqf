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
    _foundBase append ((getPos player) nearObjects [_x, 500]);
} forEach KPCF_cratefillerBase;

systemchat format ["%1", _foundBase];

// Add the action
{
    if (!(_x in KPCF_usedBase)) then {
        _x addAction ["<t color='#FF8000'>" + localize "STR_KPCF_ACTIONOPEN" + "</t>", {[_this] call KPCF_fnc_openDialog;}, nil, 1, false, true, "", "true", KPCF_interactRadius];
        KPCF_usedBase pushBack _x;
    };
} forEach _foundBase;

[{call KPCF_fnc_manageActions;}, [], 30] call CBA_fnc_waitAndExecute;
