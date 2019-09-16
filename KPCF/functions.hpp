/*
    Killah Potatoes Cratefiller v1.2.0 function library

    File: functions.hpp
    Author: Dubjunk - https://github.com/KillahPotatoes
    Date: 2019-05-09
    Last Update: 2019-09-16
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Fetches all functions from this modules.
*/

class cratefiller {
    file = "KPCF\fnc";

    // Module post initialization
    class cratefiller_postInit {
        postInit = 1;
    };

    // Module pre initialization
    class cratefiller_preInit {
        preInit = 1;
    };

    // Adds the given amount of the selected item to the crate.
    //class addEquipment {};

    // Changes the shown equipment category
    //class createEquipmentList {};

    // Creates a list with valueable magazines or attachments
    //class createSubList {};

    // Deletes the nearest crate
    //class deleteCrate {};

    // Deletes the selected preset
    //class deletePreset {};

    // Exports the active inventory
    //class export {};

    // Gets the config path for the given classname
    //class getConfigPath {};

    // Gets all inventory items of the active crate
    //class getInventory {};

    // Creates the item lists if generateLists is enabled
    //class getItems {};

    // Scans the spawn area for possible storages
    //class getNearStorages {};

    // Imports the selected preset
    //class import {};

    // Manages the actions
    class cratefiller_manageActions {};

    // Manages the ACE actions
    class cratefiller_manageAceActions {};

    // Open the dialog
    //class openDialog {};

    // Removes the given amount of the selected item in the crate.
    //class removeEquipment {};

    //Reads and defines the active inventory from the LB.
    //class setActiveStorage {};

    // Adds the items to the active crate
    //class setInventory {};

    // Displays the items of the active crate
    //class showInventory {};

    // Reads all saved presets and lists them.
    //class showPresets {};

    // Sorts the displaynames of the given item array.
    //class sortList {};

    // Spawns the selected crate
    //class spawnCrate {};
};
