params [ "_sector" ];
private [ "_crates_amount", "_spawnpos", "_i", "_spawnclass", "_nearbuildings", "_intel_range", "_building_positions", "_used_positions", "_buildingposition", "_nbintel", "_compatible_classnames" ];

_debug = false;
_intel_range = 150;
_nbintel = 2 + (floor (random 3));
_compatible_classnames = [
	"Cargo_House_base_F",
	"Cargo_HQ_base_F",
	"Cargo_Patrol_base_F",
	"Cargo_Tower_base_F",
	"Land_i_Barracks_V1_F",
	"Land_MilOffices_V1_F",
	"Land_Research_HQ_F",
	"Land_Research_house_V1_F"
];

if ( isNil "GRLIB_military_sectors_already_activated" ) then { GRLIB_military_sectors_already_activated = [] };

if ( !( _sector in GRLIB_military_sectors_already_activated )) then {

	GRLIB_military_sectors_already_activated pushback _sector;

	if ( !GRLIB_passive_income ) then {
		_crates_amount = round ((1 + floor random 4) * GRLIB_resources_multiplier) min 6;

		_spawnpos = [4, (markerpos _sector), 100, 30, false] call R3F_LOG_FNCT_3D_tirer_position_degagee_sol;
		if (count _spawnpos > 0) then {
			_vehicle = opfor_transport_truck createVehicle _spawnpos;
			_vehicle addMPEventHandler ["MPKilled", {_this spawn kill_manager}];
			_vehicle setVariable ["GRLIB_vehicle_owner", "server", true];
		};

		for "_i" from 1 to _crates_amount do {
			_newbox = [ammobox_o_typename, markerpos _sector, true] call boxSetup;
			clearWeaponCargoGlobal _newbox;
			clearMagazineCargoGlobal _newbox;
			clearItemCargoGlobal _newbox;
			clearBackpackCargoGlobal _newbox;
		};
	};
	_nearbuildings = [ nearestObjects [ markerpos _sector, _compatible_classnames, _intel_range ], { alive _x } ] call BIS_fnc_conditionalSelect;

	if ( count _nearbuildings > 0 ) then {
		_building_positions = [];
		{ _building_positions = _building_positions + ( [_x] call BIS_fnc_buildingPositions ); } foreach _nearbuildings;
		_building_positions = [ _building_positions, { _x select 2 < 2 } ] call BIS_fnc_conditionalSelect;
		if ( count _building_positions >= 4 ) then {
			_used_positions = [];
			while { _nbintel > 0 } do {
				_buildingposition = selectRandom _building_positions;
				while { _buildingposition in _used_positions } do {
					_buildingposition = selectRandom _building_positions;
				};
				_used_positions pushback _buildingposition;

				_intelclassname = selectRandom GRLIB_intel_items;
				_intelobject = _intelclassname createVehicle _buildingposition;
				_intelobject setVariable ["GRLIB_intel_search", true, true];
				_intelobject setPosATL [_buildingposition select 0, _buildingposition select 1, (_buildingposition select 2) - 0.15];
				_intelobject allowDamage false;
				_intelobject setdir (random 360);

				if ( _debug ) then {
					_marker = createMarkerLocal [ format ["markedveh%1", (getpos _intelobject) select 0], getpos _intelobject ];
					_marker setMarkerColorLocal GRLIB_color_enemy_bright;
					_marker setMarkerTypeLocal "mil_dot";
				};
				_nbintel = _nbintel - 1;
			};
		};
	};
};