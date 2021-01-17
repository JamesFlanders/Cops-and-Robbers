/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_newUnit = _this select 0;
_oldUnit = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

_newUnit enableFatigue false;

switch (side _newUnit) do {
	case west: { 
		_newUnit setObjectTexture [0,"textures\pol_hvuniform.paa"];
	};
	default {};
};