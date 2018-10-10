/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Spawns the selected crate.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Dialog controls
private _dialog = findDisplay 758067;
private _ctrlCrate = _dialog displayCtrl 75801;

// Read the controls
private _crateIndex = lbCurSel _ctrlCrate;

// Check for empty selection
if (_crateIndex == -1) exitWith {};

// Crate selection
private _crateType = (KPCF_crates select _crateIndex);

// Check if spawnpoint is clear
if (!(((getPos KPCF_cratefillerSpawn) nearEntities 5) isEqualTo [])) exitWith {};

// Spawn crate
private _crate = createVehicle [_crateType, (getPos KPCF_cratefillerSpawn), [], 0, "NONE"];

// Clear the storage
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;
