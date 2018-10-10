/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Deletes the nearest crate.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Check for empty variable
if (isNull KPCF_activeStorage) exitWith {};

// Check if the active storage is a pre defined crate
if (!((typeOf KPCF_activeStorage) in KPCF_crates)) exitWith {};

// Delete crate
deleteVehicle KPCF_activeStorage;

call KPCF_fnc_getInventory;
