#include "script_component.hpp"
/*
    Killah Potatoes Cratefiller v1.2.0

    KP_fnc_cratefiller_getConfigPath

    File: fn_cratefiller_getConfigPath.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2020-01-21
    Last Update: 2020-01-21
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Gets the config path / type of the given classname.

    Parameter(s):
        _classname - Classname which should be checked [STRING, defaults to ""]

    Returns:
        Config path [STRING]
*/

params [
    ["_classname", "", [""]]
];

// Exit if no parameter provided
if (_className isEqualTo "") exitWith {""};

// Variables
private _config = CCGVAR(_className, configNull);

if (isNull _config) then {
    // find configclass
    switch true do
    {
        case (isClass (configFile >> "CfgMagazines" >> _classname)): {
            _config = (configFile >> "CfgMagazines" >> _classname);
        };
        case (isClass (configFile >> "CfgWeapons" >> _classname)): {
            _config = (configFile >> "CfgWeapons" >> _classname);
        };
        case (isClass (configFile >> "CfgVehicles" >> _classname)): {
            _config = (configFile >> "CfgVehicles" >> _classname);
        };
        case (isClass (configFile >> "CfgGlasses" >> _classname)): {
            _config = (configFile >> "CfgGlasses" >> _classname);
        };
        default {""};
    };
    CCSVAR(_classname, _config, true);
};

_config
