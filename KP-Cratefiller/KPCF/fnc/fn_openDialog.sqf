/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Opens the cratefiller dialog.

    Parameter(s):
    0 : ARRAY - gets all data from the used base object

    Returns:
    NONE
*/

params ["_data"];

KPCF_activeBase = _data select 0;

KPCF_activeSpawn = nearestObject [getPos KPCF_activeBase, KPCF_cratefillerSpawn];

if (isNull KPCF_activeSpawn) then {
    hint localize "STR_KPCF_NOSPAWN";
    KPCF_activeSpawn = KPCF_activeBase;
};

// Create dialog
createDialog "KPCF_dialog";
disableSerialization;

// Dialog controls
private _dialog = findDisplay 758067;
private _ctrlCrate = _dialog displayCtrl 75801;
private _ctrlSpawn = _dialog displayCtrl 75803;
private _ctrlDelete = _dialog displayCtrl 75804;
private _ctrlCat = _dialog displayCtrl 75810;
private _ctrlWeapon = _dialog displayCtrl 75811;

private "_config";

if (!KPCF_canSpawnAndDelete) then {
    _ctrlCrate ctrlShow false;
    _ctrlSpawn ctrlShow false;
    _ctrlDelete ctrlShow false;
} else {
    // Fill the controls
    {
        _config = [_x] call KPCF_fnc_getConfigPath;
        _ctrlCrate lbAdd (getText (configFile >> _config >> _x >> "displayName"));
    } forEach KPCF_crates;
};

// Hide controls
_ctrlWeapon ctrlShow false;

// Reset variables
KPCF_activeStorage = objNull;

_ctrlCat lbAdd localize "STR_KPCF_LISTWEAPONS";
_ctrlCat lbAdd localize "STR_KPCF_LISTMAGAZINES";
_ctrlCat lbAdd localize "STR_KPCF_LISTGRENADES";
_ctrlCat lbAdd localize "STR_KPCF_LISTEXPLOSIVES";
_ctrlCat lbAdd localize "STR_KPCF_LISTVARIOUS";

[] call KPCF_fnc_getNearStorages;
