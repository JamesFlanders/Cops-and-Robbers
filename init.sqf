/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

//Define all objects.
_escapeBoats = [escape_boat1, escape_boat2, escape_boat3, escape_boat4, escape_boat5, escape_boat6];
_locations = [shop_trinite, shop_pessagne, shop_port, fuel_dourdan, fuel_larche, fuel_chapoi, bank_airport];

//Define spawn inventories for BluFor
[west, "Constable1"] call BIS_fnc_addRespawnInventory;
[west, "Constable2"] call BIS_fnc_addRespawnInventory;
[west, "Constable3"] call BIS_fnc_addRespawnInventory;
[west, "ArmedResponse1"] call BIS_fnc_addRespawnInventory;
[west, "ArmedResponse2"] call BIS_fnc_addRespawnInventory;
[west, "ArmedResponse3"] call BIS_fnc_addRespawnInventory;

//Create markers and actions for all '_locations'.
[_locations] execVM "scripts\fn_createLocations.sqf";

//Define which skins will be used.
[] execVM "scripts\fn_vehicles.sqf";

//Define the amount of escapeboats.
[_escapeBoats, 3] execVM "scripts\fn_escapeBoats.sqf"; //'3' = Amount of vehicles (Make parameretized)

//Handler to disable renegade feature
[] execVM "scripts\fn_handler.sqf";

//Spawn in the Civilian Occupation System
null=[] execVM "cos\cosInit.sqf";

//Disable certain chat/von channels
0 enableChannel [true, false];
2 enableChannel false;

//Define money of criminals
balance = 0;
publicVariable "balance";

