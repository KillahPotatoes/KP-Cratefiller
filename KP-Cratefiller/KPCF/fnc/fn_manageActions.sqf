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

// Add the action
KPCF_cratefiller_base addAction ["<t color='#FF8000'>" + localize "STR_KPCF_ACTIONOPEN" + "</t>", {[] call KPCF_fnc_openDialog;}, nil, 1, false, true, "", "true", 5];
