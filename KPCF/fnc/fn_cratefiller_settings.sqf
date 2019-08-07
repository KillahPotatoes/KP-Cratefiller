/*
    KP_fnc_cratefiller_settings

    File: fn_cratefiller_settings.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2019-05-09
    Last Update: 2019-08-07
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        CBA Settings initialization for this module

    Parameter(s):
        NONE

    Returns:
        Function reached the end [BOOL]
*/

// KP_param_cratefiller_spawnAndDelete
// Enables/Disables the ability to spawn and delete pre defined crates.
// Default: true
[
    "KP_param_cratefiller_spawnAndDelete",
    "CHECKBOX",
    [localize "STR_KP_CRATEFILLER_SPAWNDELETE", localize "STR_KP_CRATEFILLER_SPAWNDELETE_TT"],
    localize "STR_KP_CRATEFILLER_SETTINGS",
    true,
    1,
    {}
] call CBA_Settings_fnc_init;

// KP_param_cratefiller_generatePreset
// Enables/Disables the item preset generation from configFile.
// Default: true
[
    "KP_param_cratefiller_generatePreset",
    "CHECKBOX",
    [localize "STR_KP_CRATEFILLER_GENERATEPRESET", localize "STR_KP_CRATEFILLER_GENERATEPRESET_TT"],
    localize "STR_KP_CRATEFILLER_SETTINGS",
    true,
    1,
    {}
] call CBA_Settings_fnc_init;

// KP_param_cratefiller_usageRadius
// Defines the range where inventories can be edited and crates will spawn.
// Default: 25
[
    "KP_param_cratefiller_usageRadius",
    "SLIDER",
    [localize "STR_KP_CRATEFILLER_USAGERADIUS", localize "STR_KP_CRATEFILLER_USAGERADIUS_TT"],
    localize "STR_KP_CRATEFILLER_SETTINGS",
    [1, 250, 25, 0],
    1,
    {}
] call CBA_Settings_fnc_init;

// KP_param_cratefiller_interactRadius
// Defines the range for the interaction (addAction / ACE).
// Default: 5
[
    "KP_param_cratefiller_interactRadius",
    "SLIDER",
    [localize "STR_KP_CRATEFILLER_INTERACTRADIUS", localize "STR_KP_CRATEFILLER_INTERACTRADIUS_TT"],
    localize "STR_KP_CRATEFILLER_SETTINGS",
    [1, 50, 5, 0],
    1,
    {}
] call CBA_Settings_fnc_init;

// KP_param_cratefiller_cratefillerOverview
// Enables/Disables the cratefiller tools.
// Default: true
[
    "KP_param_cratefiller_cratefillerOverview",
    "CHECKBOX",
    [localize "STR_KP_CRATEFILLER_ACTIVATEOVERVIEW", localize "STR_KP_CRATEFILLER_ACTIVATEOVERVIEW_TT"],
    localize "STR_KP_CRATEFILLER_SETTINGS",
    true,
    1,
    {}
] call CBA_Settings_fnc_init;

// KP_param_cratefiller_useAceActions
// Enables/Disables the ACE interaction usage.
// Default: false
[
    "KP_param_cratefiller_useAceActions",
    "CHECKBOX",
    [localize "STR_KP_CRATEFILLER_USEACEACTIONS", localize "STR_KP_CRATEFILLER_USEACEACTIONS_TT"],
    localize "STR_KP_CRATEFILLER_SETTINGS",
    true,
    1,
    {}
] call CBA_Settings_fnc_init;

true
