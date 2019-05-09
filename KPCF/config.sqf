/*
    KP Cratefiller config file

    File: config.sqf
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2019-05-09
    Last Update: 2019-05-09
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        This file contains several configs for the cratefiller.
*/

// This object is for the player interaction, so at these objects you can open the dialog
KP_cratefiller_Building = [
    "Land_Cargo10_military_green_F"
];

// Defines the available crates
KP_cratefiller_crates = [
    "B_supplyCrate_F",
    "CargoNet_01_box_F"
];


// Defines the blacklisted items
// Blacklisted items are used on every category with activated generatedLists and everytime on the magazines and attachments
// So this variable will ensure the block of unwanted items
KP_cratefiller_blacklistedItems = [
    ""
];

// ----- This Variable will only be used with activated generatedLists -----

// Defines the additional items
// Additional items will be added after the item detection to ensure the availability
KP_cratefiller_additionalItems = [
    ""
];

// ----- These Variables will be replaced with activated generatedLists -----

// Defines the whitelisted items
// These items will be used as manageable items on deactivated preset generation
KP_cratefiller_whitelistedItems = [

    // Defines the available weapons
    "arifle_SPAR_01_snd_F",
    "MMG_01_tan_F",

    // Defines the available grenades
    "HandGrenade",
    "MiniGrenade",

    // Defines the available explosives
    "DemoCharge_Remote_Mag",
    "ATMine_Range_Mag",

    // Defines the available items
    "FirstAidKit",
    "ToolKit",

    // Defines the available backpacks
    "B_FieldPack_cbr",
    "B_AssaultPack_cbr"

];
