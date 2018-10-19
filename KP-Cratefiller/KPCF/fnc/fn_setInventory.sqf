/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Adds the items to the active crate.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Check if the storage will be empty
if (count KPCF_inventory == 0) exitWith {
    clearWeaponCargoGlobal KPCF_activeStorage;
    clearMagazineCargoGlobal KPCF_activeStorage;
    clearItemCargoGlobal KPCF_activeStorage;
    clearBackpackCargoGlobal KPCF_activeStorage;
    remoteExecCall ["KPCF_fnc_getInventory", (allPlayers - entities "HeadlessClient_F")];
};

// Clear the storage
clearWeaponCargoGlobal KPCF_activeStorage;
clearMagazineCargoGlobal KPCF_activeStorage;
clearItemCargoGlobal KPCF_activeStorage;
clearBackpackCargoGlobal KPCF_activeStorage;

// Count the variable index
private _count = count KPCF_inventory;

// Adapt the cargo into KPCF variable
for "_i" from 0 to (_count-1) do {
    KPCF_activeStorage addItemCargoGlobal [(KPCF_inventory select _i) select 0, (KPCF_inventory select _i) select 1];
};

remoteExecCall ["KPCF_fnc_getInventory", (allPlayers - entities "HeadlessClient_F")];
