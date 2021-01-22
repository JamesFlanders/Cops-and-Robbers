/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_target = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

_divider = [str _target, "_"] call BIS_fnc_splitString;
_locationType = _divider select 0;
_name = _divider select 1;
_area = format ["zone_%1", _target];

_time_for_type = 0;
_percentage = 0;
_reward = 0;

if (side _caller == independent) then {

	if (cooldown <= 0) then {

		[] execVM "scripts\fn_cooldownTimer.sqf";
		[_target, _actionid] remoteExec ["removeAction"];		

		switch (_locationType) do {
			case "shop": { 
				_time_for_type = 180;
				_reward = 7500;
			};
			case "fuel": {
				_time_for_type = 90;
				_reward = 2500;
			};
			case "bank": {
				_time_for_type = 480;
				_reward = 25000;
			};
			default {};
		};

		_timer = _time_for_type;

		format ["There is a robbery at the %1 near %2", _locationType, _name] remoteExec ["hintSilent"];

		while {_timer > 0 && (_caller inArea _area)} do {
			_percentage = ((_time_for_type  - _timer) / _time_for_type) * 100;
			_caller sideChat format ["Robbery completion: %2%3 (%1)", _name, _percentage, "%"];
			_timer = _timer - 3;
			sleep 3;
		};

		if (_timer <= 0) then {
			_caller sideChat "Robbery completed!";
			_caller sideChat format ["You have a balance of €%1", balance];
			balance = balance + _reward;
			publicVariable "balance";
			format ["The robbery at the %1 near %2 has succeeded", _locationType, _name] remoteExec ["hintSilent"];

			if (balance > 7500) then {
				[west, "ArmedResponse1"] call BIS_fnc_addRespawnInventory;
				[west, "ArmedResponse2"] call BIS_fnc_addRespawnInventory;
				[west, "ArmedResponse3"] call BIS_fnc_addRespawnInventory;
			};

		} else {
			_caller sideChat "Robbery failed!";
			format ["The robbery at the %1 near %2 has failed", _locationType, _name] remoteExec ["hintSilent"];
			_target addAction ["<t color='#990000' size='1.2'><img size='1.2' image='\a3\ui_f\data\Map\Markers\Military\warning_CA.paa'/> Start Robbery</t>", "scripts\fn_robbery.sqf"];
		};
	} else {
		format ["You have to wait %1 seconds to start the next robbery", cooldown] remoteExec ["hintSilent", _caller];
	};

} else {
	"You're not a criminal!" remoteExec ["hintSilent", _caller];
};