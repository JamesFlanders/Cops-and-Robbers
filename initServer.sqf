/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

//Define Escape boats
_escapeBoats = [escape_boat1, escape_boat2, escape_boat3, escape_boat4, escape_boat5, escape_boat6];

//Define the amount of escapeboats.
[_escapeBoats, 3] execVM "scripts\fn_escapeBoats.sqf"; //'3' = Amount of vehicles (Make parameretized)

//Define respawns of Criminals
[independent, 1] call BIS_fnc_respawnTickets;