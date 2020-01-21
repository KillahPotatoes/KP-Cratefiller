#include "script_component.hpp"
/*
    Killah Potatoes Cratefiller v1.2.0

    KP_fnc_cratefiller_presets

    File: fn_cratefiller_presets.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2020-01-21
    Last Update: 2020-01-21
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Creates the different categories of the whitelisted items.

    Parameter(s):
        NONE

    Returns:
        Function reached the end [BOOL]
*/

// Variables
private _weapons = [];
private _grenades = [];
private _explosives = [];
private _items = [];
private _backpacks = [];
private _classNames = [];
private _type = [];
private _specialItems = [];
private _additional = [];
private _blacklist = [];

// Convert CBA settings array
_classNames = KP_param_cratefiller_items splitString ",";
_additional = KP_param_cratefiller_additional splitString ",";
_blacklist = KP_param_cratefiller_blacklist splitString ",";

CSVAR("buildings", KP_param_cratefiller_buildings splitString ",");
CSVAR("crates", [KP_param_cratefiller_crates splitString ","] call KP_fnc_cratefiller_sortList);

if (KP_param_cratefiller_generatePreset) then {
    _classNames = [];
    // Fetch all needed config classes
    private _type = [];
    private _configClasses = [];
    {
        _configClasses append (
            "
                _type = (configName _x) call BIS_fnc_itemType;
                (getNumber (_x >> 'scope') isEqualTo 2) &&
                ((_type select 0) != '') &&
                ((_type select 0) != 'VehicleWeapon')
            " configClasses _x
        );
    } forEach [(configFile >> "CfgWeapons"), (configFile >> "CfgMagazines"), (configFile >> "CfgVehicles"), (configFile >> "CfgGlasses")];

    // Fetch classnames
    {
        _classNames pushBack (configName _x);
    } forEach _configClasses;
};

// Search for special items with wrong config entrys
{
    if (_x isKindOf ["CBA_MiscItem", configfile >> "CfgWeapons"]) then {_specialItems pushBack _x};
} forEach _classNames;

// Black- and Whitelisting
_classnames = _classNames - _blacklist;
_classNames append _additional;

// Sort all classnames into the different categories
{
    _type = _x call BIS_fnc_itemType;
    switch (_type select 0) do {
        case "Weapon": {if ((_type select 1) isEqualTo "UnknownWeapon") then {_items pushBack _x} else {if ((_x call BIS_fnc_baseWeapon) isEqualTo _x) then {_weapons pushBack _x;};};};
        case "Mine": {_explosives pushBack _x};
        case "Magazine": {if ((((_type select 1) isEqualTo "Grenade") || ((_type select 1) isEqualTo "SmokeShell")) && !((getNumber (configFile >> "CfgMagazines" >> _x >> "type")) isEqualTo 16)) then {_grenades pushBack _x}};
        case "Equipment": {if ((_type select 1) isEqualTo "Backpack") then {_backpacks pushBack _x}};
        case "Item": {
            switch (_type select 1) do {
                case "AccessoryMuzzle" : {};
                case "AccessoryPointer" : {};
                case "AccessorySights" : {};
                case "AccessoryBipod" : {};
                default {_items pushBack _x};
            };
        };
    };
} forEach (_classnames arrayIntersect _classnames);

_items append _specialItems;

CSVAR("weapons", [_weapons] call KP_fnc_cratefiller_sortList);
CSVAR("grenades", [_grenades] call KP_fnc_cratefiller_sortList);
CSVAR("explosives", [_explosives] call KP_fnc_cratefiller_sortList);
CSVAR("items", [_items] call KP_fnc_cratefiller_sortList);
CSVAR("backpacks", [_backpacks] call KP_fnc_cratefiller_sortList);

true
