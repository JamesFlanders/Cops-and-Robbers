/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_spawnPoints = ["spawn_independent1", "spawn_independent2", "spawn_independent3", "spawn_independent4"];
_spawnPoint = _spawnPoints call BIS_fnc_selectRandom;

{
	if (side _x == independent) then {
		_x setPos (getMarkerPos _spawnPoint);
	};
} forEach call BIS_fnc_listPlayers;

 