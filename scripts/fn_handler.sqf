/*
	author: Jens Caenen
	description: Script that repeats every 60s to execute stuff.
	returns: nothing
*/

while {true} do {
	{
		if (rating _x < 100000) then {
			_x addRating 100000;
		};
	} forEach call BIS_fnc_listPlayers;
	sleep 60;
};