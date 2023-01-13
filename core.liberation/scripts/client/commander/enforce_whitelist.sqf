params ["_player"];

private _ret = false;

if ( !GRLIB_use_whitelist || ([] call is_admin) ) exitWith { true };
if ( typeOf _player == commander_classname ) then {
	if ( !isNil "GRLIB_whitelisted_steamids" ) then {
		if ( (getPlayerUID _player) in GRLIB_whitelisted_steamids ) then {
			_ret = true;
		};
	};
};

_ret;