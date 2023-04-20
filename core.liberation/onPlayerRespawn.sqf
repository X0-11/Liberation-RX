titleText ["" ,"BLACK FADED", 100];
player allowDamage false;
disableUserInput true;
if (GRLIB_ACE_medical_enabled) then {
	[player] call ACE_medical_treatment_fnc_fullHealLocal;
	[player] call ACE_medical_statemachine_fnc_resetStateDefault;
	player setvariable ["ace_medical_causeofdeath", nil];
};
player setPosATL ((getmarkerpos GRLIB_respawn_marker) findEmptyPosition [0,50]);
{if (_x distance2D player < 200) then { deleteVehicle _x }} foreach units GRLIB_side_enemy;
GRLIB_player_spawned = false;
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
player setVariable ["GREUH_stuff_price", 0];
player setVariable ["GRLIB_action_inuse", false];
GRLIB_backup_loadout = getUnitLoadout player;
waitUntil {sleep 1; !isNil "GRLIB_init_server" };
player allowDamage true;

[] execVM "scripts\client\spawn\redeploy_manager.sqf";
[] execVM "scripts\client\misc\welcome.sqf";
