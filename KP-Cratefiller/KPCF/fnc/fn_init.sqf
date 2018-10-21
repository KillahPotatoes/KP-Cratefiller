/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes

    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    This will initialize the KP cratefiller functionalities.

    Dependencies:
        * KPGUI
*/

// Only run, when we've a real player
if (hasInterface) then {

    // Read the config file
    [] call compile preprocessFileLineNumbers "KPCF_config.sqf";

    // Read the variables
    [] call compile preprocessFileLineNumbers "KPCF\variables.sqf";

    // Check for ACE
    KPCF_ace = isClass (configfile >> "CfgPatches" >> "ace_common");

    // Add CBA event handler to the base objects
    {
        [_x, "init", {[_this] call KPCF_fnc_manageActions;}, nil, nil, true] call CBA_fnc_addClassEventHandler;
    } forEach KPCF_cratefillerBase;
};
