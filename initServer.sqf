/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

//Define all objects.
_escapeBoats = [escape_boat1, escape_boat2, escape_boat3, escape_boat4, escape_boat5, escape_boat6];

//Define spawn inventories for BluFor
[west, "Constable1"] call BIS_fnc_addRespawnInventory;
[west, "Constable2"] call BIS_fnc_addRespawnInventory;
[west, "Constable3"] call BIS_fnc_addRespawnInventory;
[independent, "Criminal1"] call BIS_fnc_addRespawnInventory;
[independent, "Criminal2"] call BIS_fnc_addRespawnInventory;
[independent, "Criminal3"] call BIS_fnc_addRespawnInventory;

//Define the amount of escapeboats.
[_escapeBoats, paramsarray select 6] execVM "scripts\fn_escapeBoats.sqf";

//Define respawns of Criminals
[independent, 1] call BIS_fnc_respawnTickets;

//Define which skins will be used.
[] execVM "scripts\fn_vehicles.sqf";

//Handler to disable renegade feature
[] execVM "scripts\fn_handler.sqf";

//Spawn in the Civilian Occupation System
null=[] execVM "cos\cosInit.sqf";

//Added Customchat for announcements
_customChannelId = radioChannelCreate [[0.117, 0.564, 1, 1], "Dispatch", "Dispatch", [call BIS_fnc_listPlayers]];

//Disable certain chat/von channels
0 enableChannel false;
2 enableChannel false;
6 enableChannel false;

//Define money of criminals
balance = 0;
publicVariable "balance";

//Define robbery cooldown timer
cooldown = 0;
publicVariable "cooldown";