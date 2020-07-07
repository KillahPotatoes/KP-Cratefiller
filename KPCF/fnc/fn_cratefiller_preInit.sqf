#include "script_component.hpp"
/*
    Killah Potatoes Cratefiller v1.2.0

    KP_fnc_cratefiller_preInit

    File: fn_cratefiller_preInit.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2019-05-09
    Last Update: 2020-07-07
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        The preInit function defines global variables, adds event handlers and set some vital settings which are used in this module.

    Parameter(s):
        NONE

    Returns:
        PreInit finished [BOOL]
*/

if (isServer) then {diag_log format ["[KPDS] [%1] [PRE] [CRATEFILLER] Module initializing...", diag_tickTime];};

/*
    ----- Module Initialization -----
*/

// Check for ACE
KP_ace_enabled = isClass (configFile >> "CfgPatches" >> "ace_main");

// Process CBA Settings
[] call KP_fnc_cratefiller_settings;

// Server section (dedicated and player hosted)
if (isServer) then {

    KP_cratefiller_data = true call CBA_fnc_createNamespace;
    publicVariable "KP_cratefiller_data";

    KP_cratefiller_cache = true call CBA_fnc_createNamespace;
    publicVariable "KP_cratefiller_cache";

};

// Player section
if (hasInterface) then {

    // Add CBA event handler to the base objects
    {
        [_x, "init", {[_this select 0] call KP_fnc_cratefiller_manageActions;}, nil, nil, true] call CBA_fnc_addClassEventHandler;
    } forEach CGVAR("buildings", []);

};

if (isServer) then {diag_log format ["[KPDS] [%1] [PRE] [CRATEFILLER] Module initialized", diag_tickTime];};

true
