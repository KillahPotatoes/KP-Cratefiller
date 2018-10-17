/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Configuration file for various variables of the KP cratefiller.
*/

// The Base object is for the player interaction, so at these object you can open the dialog
KPCF_cratefillerBase = [
    "Land_Cargo10_military_green_F"
];

// The Spawn object is the point where crates will spawn and acts the center for the KPCF_spawnRadius
KPCF_cratefillerSpawn = "Land_HelipadCivil_F";

// These variable defines the range where inventories can be edited
// Example: With an setting of 10 all objects in a radius of 10m from the center of the spawn object can be edited
KPCF_spawnRadius = 10;

// Defines the distance for the interaction (addAction / ACE)
KPCF_interactRadius = 5;

// Defines the distance in which the loop searches for placed interaction (base) objects
// A lower value will be more performant
KPCF_checkDistance = 200;

// Defines the available crates
KPCF_crates = [
    "B_supplyCrate_F",
    "CargoNet_01_box_F"
];

// Defines the available weapons
KPCF_weapons = [
    "arifle_SPAR_01_snd_F",
    "MMG_01_tan_F"
];

// Defines the available grenades
KPCF_grenades = [
    "HandGrenade",
    "MiniGrenade"
];

// Defines the available explosives
KPCF_explosives = [
    "DemoCharge_Remote_Mag",
    "ATMine_Range_Mag"
];

// Defines the available items
KPCF_items = [
    "FirstAidKit",
    "ToolKit"
];
