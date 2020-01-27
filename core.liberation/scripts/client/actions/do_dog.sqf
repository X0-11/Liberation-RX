_cmd = (_this select 3);
_my_dog = player getVariable ["my_dog", nil];

if ( !isNil "_my_dog" ) then {
	if (_cmd == "del" ) then {
		playSound3D ["a3\sounds_f\ambient\animals\dog2.wss", _my_dog, false, (getPos _my_dog) , 6, 0.8, 0];
		sleep 3;
		deleteVehicle _my_dog;
		player setVariable ["my_dog", nil];
	};

	if (_cmd == "find" ) then {
		_enemy_lst = (getPos player) nearEntities ["Man", 300];
		_enemy_lst = _enemy_lst select {alive _x && (side _x == GRLIB_side_enemy || { _x getVariable ["GRLIB_is_prisonner", false]})};

		_msg = "The dog found nothing.";
		if (count _enemy_lst > 0 ) then {
			_enemy_lst = _enemy_lst apply {[_x distance2D player, _x]};
			_enemy_lst sort true;
			_dist = (_enemy_lst select 0) select 0;
			_man = (_enemy_lst select 0) select 1;

			_msg = format ["The dog find something at %1m!", round (_dist)];
			_my_dog setVariable ["do_find", _man];
		};
		gamelogic globalChat _msg;
	};

};