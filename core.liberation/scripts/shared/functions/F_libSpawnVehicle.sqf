params [
	"_sectorpos",
	"_classname",
	[ "_precise_position", false ],
	[ "_random_rotate", true ]
];

diag_log format [ "Spawning vehicle %1 at %2", _classname , time ];

private _newvehicle = objNull;
private _spawnpos = zeropos;

if ( _precise_position ) then {
	_spawnpos = [] + _sectorpos;
} else {
	while { _spawnpos isEqualTo zeropos } do {
		_safepos = [_sectorpos, 5, 300, 1, 1, 0.25, 0, [], [zeropos, zeropos]] call BIS_fnc_findSafePos;
		if (surfaceIsWater _safepos) then {
			_spawnpos = _safepos;
		} else {
			_spawnpos = _safepos findEmptyPosition [1, 20, "B_Heli_Light_01_F"];
		};
		if ( count _spawnpos == 0 ) then { _spawnpos = zeropos; };
	};
};

_newvehicle = objNull;
if ( _classname in opfor_choppers ) then {
	_newvehicle = createVehicle [_classname, _spawnpos, [], 0, 'FLY'];
	_newvehicle setPos (getPosATL _newvehicle vectorAdd [0, 0, 400]);
	_newvehicle flyInHeight 400;
} else {
	if (surfaceIsWater _spawnpos && !(_classname in opfor_boat)) then {
		_classname = selectRandom opfor_boat;
	};
	_newvehicle = _classname createVehicle _spawnpos;
	//_newvehicle setpos _spawnpos;
};
_newvehicle allowdamage false;
clearWeaponCargoGlobal _newvehicle;
clearMagazineCargoGlobal _newvehicle;
clearItemCargoGlobal _newvehicle;
clearBackpackCargoGlobal _newvehicle;

if ( _classname in militia_vehicles ) then {
	[ _newvehicle ] call F_libSpawnMilitiaCrew;
} else {
	createVehicleCrew _newvehicle;
	sleep 1;
	{
		_x addMPEventHandler ['MPKilled', {_this spawn kill_manager}];
		_x addEventHandler ["HandleDamage", {_this call damage_manager_EH}];
	} foreach (crew _newvehicle);
};
_newvehicle addMPEventHandler ['MPKilled', {_this spawn kill_manager}];
_newvehicle allowCrewInImmobile true;
_newvehicle setUnloadInCombat [true, false];

sleep 2;
if ( _random_rotate ) then {
	_newvehicle setdir (random 360);
};
_newvehicle setVectorUp surfaceNormal position _newvehicle;
_newvehicle setdamage 0;
_newvehicle allowdamage true;

// A3 textures
if ( _classname in ["I_E_Truck_02_MRL_F"] ) then {
	[_newvehicle, ["Opfor",1], true ] call BIS_fnc_initVehicle;
};

// LRX textures
if (count opfor_texture_overide > 0) then {
	_texture_name = selectRandom opfor_texture_overide;
	_texture = [ RPT_colorList, { _x select 0 == _texture_name } ] call BIS_fnc_conditionalSelect select 0 select 1;
	[_newvehicle, _texture, _texture_name,[]] call RPT_fnc_TextureVehicle;
};

diag_log format [ "Done Spawning vehicle %1 at %2", _classname , time ];

_newvehicle

