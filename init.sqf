/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

//Define all objects.
_locations = [shop_trinite, shop_pessagne, shop_port, fuel_dourdan, fuel_larche, fuel_chapoi, bank_airport];

//Define spawn inventories for BluFor
[west, "Constable1"] call BIS_fnc_addRespawnInventory;
[west, "Constable2"] call BIS_fnc_addRespawnInventory;
[west, "Constable3"] call BIS_fnc_addRespawnInventory;
[independent, "Criminal1"] call BIS_fnc_addRespawnInventory;
[independent, "Criminal2"] call BIS_fnc_addRespawnInventory;
[independent, "Criminal3"] call BIS_fnc_addRespawnInventory;

//Create markers and actions for all '_locations'.
[_locations] execVM "scripts\fn_createLocations.sqf";

//Define which skins will be used.
[] execVM "scripts\fn_vehicles.sqf";

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

//Define robbery cooldown timer
cooldown = 0;
publicVariable "cooldown";