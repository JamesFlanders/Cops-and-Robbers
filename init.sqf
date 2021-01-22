//Define all objects.
_locations = [shop_trinite, shop_pessagne, shop_port, fuel_dourdan, fuel_larche, fuel_chapoi, bank_airport];

//Create markers and actions for all '_locations'.
[_locations] execVM "scripts\fn_createLocations.sqf";
