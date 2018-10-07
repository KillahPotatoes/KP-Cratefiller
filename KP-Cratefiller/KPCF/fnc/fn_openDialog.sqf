/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Opens the cratefiller dialog.

    Parameter(s):
    NONE

    Returns:
    NONE
*/

// Create cratefiller dialog
createDialog "KPCF_dialog";
disableSerialization;

// Dialog controls
private _dialog = findDisplay 758067;
private _ctrlCrate = _dialog displayCtrl 75801;
private _ctrlCargo = _dialog displayCtrl 75802;
private _ctrlCat = _dialog displayCtrl 75810;
private _ctrlWeapon = _dialog displayCtrl 75811;
private _ctrlEquipment = _dialog displayCtrl 75812;
private _ctrlInventory = _dialog displayCtrl 75820;

_ctrlWeapon ctrlShow false;

// Check for an active or near box
if (isNull KPCF_activeCrate) then {
    // Get the nearest crates
    private _objs = nearestObjects [getPos KPCF_cratefiller_spawn, KPCF_crates, 10];
    if ((count _objs) == 0 ) then {
        KPCF_activeCrate = objNull;
    } else {
        KPCF_activeCrate = _objs select 0;
    };
};

// Fill the controls
{
    _config = [_x] call KPCF_fnc_getConfigPath;
    _ctrlCrate lbAdd (getText (configFile >> _config >> _x >> "displayName"));
} forEach KPCF_crates;

_ctrlCat lbAdd localize "STR_KPCF_LISTWEAPONS";
_ctrlCat lbAdd localize "STR_KPCF_LISTMAGAZINES";
_ctrlCat lbAdd localize "STR_KPCF_LISTGRENADES";
_ctrlCat lbAdd localize "STR_KPCF_LISTEXPLOSIVES";
_ctrlCat lbAdd localize "STR_KPCF_LISTVARIOUS";
