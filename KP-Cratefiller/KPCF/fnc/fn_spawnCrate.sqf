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
private _ctrlStorage = _dialog displayCtrl 75802;
private _ctrlCat = _dialog displayCtrl 75810;
private _ctrlWeapon = _dialog displayCtrl 75811;
private _ctrlEquipment = _dialog displayCtrl 75812;
private _ctrlInventory = _dialog displayCtrl 75820;

// Read the combobox
private _crateIndex = lbCurSel _ctrlCrate;

// Check for empty selection
if (_crateIndex == -1) exitWith {};

// Crate selection
private _crateType = (KPCF_crates select _crateIndex);

// Check the spawnpoint
if (!(((getPos KPCF_cratefiller_spawn) nearEntities 5) isEqualTo [])) exitWith {};

// Crate spawn
private _crate = createVehicle [_crateType, (getPos KPCF_cratefiller_spawn), [], 0, "NONE"];

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;
