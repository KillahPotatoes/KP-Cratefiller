/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Mildly Interested - https://github.com/MildlyInterested

    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    This will define the array of whitelisted Steam64IDs that are able to use Cratefiller.
*/
KPCF_enable_whitelist = false; //set to "true" if you want to limit Cratefiller only to certain users (users to be defined further down)

//Whitelist based on Steam64ID, can be obtained here: https://steamid.io/
KP_cratefiller_whitelist_steam_id = [
    "STEAM64ID1",
    "STEAM64ID2"
];

//Whitelist based on player name
KP_cratefiller_whitelist_player_name = [
    "Player1",
    "Player2"
];

//Whitelist based on player group/squad name (the one you see in the editor, NOT the one you see in role selection)
KP_cratefiller_whitelist_group_name = [
    "Group1",
    "Group2"
];