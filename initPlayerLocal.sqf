/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_player = _this select 0;
_jip = _this select 1;

_player enableFatigue false;

switch (side _player) do {
	case west: { 
		forceRespawn _player;
		_player setObjectTexture [0,"textures\pol_hvuniform.paa"];
	};
	case independent: {
		_player addeventhandler ["Killed", {[] call bis_fnc_respawnspectator}];
	};
	default {};
};