/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_player = _this select 0;
_jip = _this select 1;

switch(paramsarray select 5) do {
    case 0: {
        _player enableFatigue false;
    };
    case 1: {
        _player enableFatigue true;
    };
};

if (side _player == west) then {
	1 radioChannelAdd [_player];
    [_player, "PoliceInsignia"] call BIS_fnc_setUnitInsignia;
    [_player, [0, "textures\pol_hvuniform_nopolice.paa"]] remoteExec ["setObjectTextureGlobal", 0];
};