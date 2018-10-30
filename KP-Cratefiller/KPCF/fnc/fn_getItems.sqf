/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Creates the item lists if generateLists is enabled.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

private _configClasses = [];
private _classNames = [];
private _type = [];

{
    _configClasses append (
        "
            _type = (configName _x) call BIS_fnc_itemType;
            (getNumber (_x >> 'scope') == 2) &&
            ((_type select 0) != '') &&
            ((_type select 0) != 'VehicleWeapon')
        " configClasses _x
    );
} forEach [(configFile >> "CfgMagazines"), (configFile >> "CfgWeapons"), (configFile >> "CfgVehicles"), (configFile >> "CfgGlasses")];

{
    _classNames pushBack (configName _x)
} forEach _configClasses;

_classNames = _classNames - KPCF_blacklistedItems;
_classNames append KPCF_whitelistedItems;

{
    _type = _x call BIS_fnc_itemType;
    switch (_type select 0) do {
        case "Weapon": {if ((_x call BIS_fnc_baseWeapon) == _x) then {KPCF_weapons pushBackUnique _x;};};
        case "Mine": {KPCF_explosives pushBackUnique _x};
        case "Magazine": {if (((_type select 1) isEqualTo "Grenade") || ((_type select 1) isEqualTo "SmokeShell")) then {KPCF_grenades pushBackUnique _x}};
        case "Equipment": {if ((_type select 1) isEqualTo "Backpack") then {KPCF_backpacks pushBackUnique _x}};
        case "Item": {
            switch (_type select 1) do {
                case "AccessoryMuzzle" : {KPCF_attachments pushBackUnique _x};
                case "AccessoryPointer" : {KPCF_attachments pushBackUnique _x};
                case "AccessorySights" : {KPCF_attachments pushBackUnique _x};
                case "AccessoryBipod" : {KPCF_attachments pushBackUnique _x};
                default {KPCF_items pushBackUnique _x};
            };
        };
    };
} forEach _classNames;
