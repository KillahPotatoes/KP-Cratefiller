/*
    Killah Potatoes Cratefiller v1.2.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Configuration file for various variables of the KP cratefiller.
*/

// This variable defines if the config file will override the CBA settings
KP_cratefiller_configOverride = false;

// Classnames of the buildings which will get the cratefiller action
KP_cratefiller_buildings = [
    "Land_RepairDepot_01_tan_F",
    "Land_RepairDepot_01_green_F",
    "Land_RepairDepot_01_civ_F"
];

// Classnames of the crates which will be available for spawn and delete
KP_cratefiller_crates = [
    "B_supplyCrate_F",
    "CargoNet_01_box_F"
];

// Classnames of the inventories which will be ignored as valid storage.
KP_cratefiller_inventoryBlacklist = [
    ""
];

// Classnames of the items which should be available at the cratefiller on deactivated preset generation.
KP_cratefiller_items = [
    "arifle_SPAR_01_snd_F",
    "MMG_01_tan_F",
    "HandGrenade",
    "MiniGrenade",
    "DemoCharge_Remote_Mag",
    "ATMine_Range_Mag",
    "FirstAidKit",
    "ToolKit",
    "B_FieldPack_cbr",
    "B_AssaultPack_cbr"
];

// Classnames of the items which should be blacklisted from the cratefiller.
KP_cratefiller_blacklist = [
    ""
];

// Classnames of the items which should be added after the generated to presets to prevent missing items due to bad config entries.
KP_cratefiller_additional = [
    ""
];
