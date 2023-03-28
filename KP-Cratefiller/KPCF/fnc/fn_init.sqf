/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    Edited by Mildly_Interested - https://github.com/MildlyInterested
    
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    This will initialize the KP cratefiller functionalities.

    Dependencies:
        * KPGUI
*/
// Runs on every client to check if whitelisting is enabled/init whitelist lists
KPCF_whitelisted = false;
[] call compileFinal preprocessFileLineNumbers "KPCF_whitelist.sqf";

// Check if player is in any of the three whitelists
if (KPCF_enable_whitelist &&  (
        (getPlayerUID player in KP_cratefiller_whitelist_steam_id)
    ||  (name player in KP_cratefiller_whitelist_player_name)
    ||  (groupId (group player) in KP_cratefiller_whitelist_group_name)
)) then {
    KPCF_whitelisted = true;
};

// Only run, when we've got a real player & and has been whitelisted OR Whitelist is disabled
if (hasInterface && (KPCF_whitelisted || !KPCF_enable_whitelist)) then {

    // Read the config file
    [] call compile preprocessFileLineNumbers "KPCF_config.sqf";

    // Read the variables
    [] call compile preprocessFileLineNumbers "KPCF\variables.sqf";

    // Check for ACE
    KPCF_ace = isClass (configfile >> "CfgPatches" >> "ace_common");

    // Add CBA event handler to the base objects
    {
        [_x, "init", {[_this select 0] call KPCF_fnc_manageActions;}, nil, nil, true] call CBA_fnc_addClassEventHandler;
    } forEach KPCF_cratefillerBase;

    // Generate the lists if enabled
    if (KPCF_generateLists) then {
        [] call KPCF_fnc_getItems;
    };

    // Sort the item lists
    KPCF_sortedCrates = [KPCF_crates] call KPCF_fnc_sortList;
    KPCF_sortedWeapons = [KPCF_weapons] call KPCF_fnc_sortList;
    KPCF_sortedGrenades = [KPCF_grenades] call KPCF_fnc_sortList;
    KPCF_sortedExplosives = [KPCF_explosives] call KPCF_fnc_sortList;
    KPCF_sortedItems = [KPCF_items] call KPCF_fnc_sortList;
    KPCF_sortedBackpacks = [KPCF_backpacks] call KPCF_fnc_sortList;

};
