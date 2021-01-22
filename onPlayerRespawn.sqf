/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_newUnit = _this select 0;
_oldUnit = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

switch(paramsarray select 5) do {
    case 0: {
        _newUnit enableFatigue false;
    };
    case 1: {
        _newUnit enableFatigue true;
    };
};

if (side _newUnit == west) then {
	1 radioChannelAdd [_newUnit];
    [_newUnit, "PoliceInsignia"] call BIS_fnc_setUnitInsignia;
};