/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_player = _this select 0;
_jip = _this select 1;

_player enableFatigue false;

if (side _player == west) then {
	1 radioChannelAdd [_player];
};

1 radioChannelAdd [_player];
