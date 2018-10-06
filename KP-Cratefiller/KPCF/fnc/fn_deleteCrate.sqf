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

// Get the nearest crates
private _objs = nearestObjects [getPos KPCF_cratefiller_spawn, KPCF_crates, 10];

// Check for empty array
if ((count _objs) == 0) exitWith {};

// Delete the nearest crate
private _crate = _objs select 0;

if (KPCF_activeCrate == _crate) then {
    KPCF_activeCrate = objNull;
};

deleteVehicle _crate;
