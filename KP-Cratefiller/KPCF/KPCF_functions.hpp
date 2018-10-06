/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Function defines for the KP cratefiller.
*/

class KPCF {
    class main {
        file = "KPCF\fnc";

        // Initialize the KP cratefiller
        class init {
            postInit = 1;
        };

        // Adds the given amount of the selected item to the crate.
        class addEquipment {};

        // Deletes the nearest crate
        class deleteCrate {};

        // Changes the shown equipment category
        class equipmentList {};

        // Gets the config path for the given classname
        class getConfigPath {};

        // Changes the shown magazines
        class magazineList {};

        // Manages the actions
        class manageActions {};

        // Open the dialog
        class openDialog {};

        // Removes the given amount of the selected item in the crate.
        class removeEquipment {};

        // Spawns the selected crate
        class spawnCrate {};
    };
};
