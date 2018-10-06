/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes

    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    This will initialize the KP cratefiller functionalities.

    Dependencies:
        * KPGUI
*/

// Read the config file
call compile preprocessFileLineNumbers "KPCF_config.sqf";

// Read the variables
call compile preprocessFileLineNumbers "KPCF\variables.sqf";

// Check for ACE
KPCF_ace = isClass (configfile >> "CfgPatches" >> "ace_common");

// Only run, when we've a real player
if (hasInterface) then {
    call KPCF_fnc_manageActions;
};
