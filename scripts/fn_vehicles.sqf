/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_skin_hatchback = "textures\pol_hb.paa";
_skin_offroader = "textures\pol_offroader.paa";
_skin_suv = "textures\pol_suv_white.paa";
_skin_helicopter = "textures\pol_chopper.paa";

pol_car_hb1 setObjectTextureGlobal [0, _skin_hatchback];
pol_car_hb2 setObjectTextureGlobal [0,_skin_hatchback];
pol_car_hb3 setObjectTextureGlobal [0, _skin_hatchback];
pol_car_hb4 setObjectTextureGlobal [0,_skin_hatchback];
pol_car_off1 setObjectTextureGlobal [0, _skin_offroader];
pol_car_off2 setObjectTextureGlobal [0, _skin_offroader];
pol_car_off3 setObjectTextureGlobal [0, _skin_offroader];
pol_car_off4 setObjectTextureGlobal [0, _skin_offroader];
pol_car_suv1 setObjectTextureGlobal [0, _skin_suv];
pol_car_suv2 setObjectTextureGlobal [0, _skin_suv];
pol_car_suv3 setObjectTextureGlobal [0, _skin_suv];
pol_car_suv4 setObjectTextureGlobal [0, _skin_suv];
pol_car_suv5 setObjectTextureGlobal [0, _skin_suv];
pol_car_suv6 setObjectTextureGlobal [0, _skin_suv];
pol_hel1 setObjectTextureGlobal [0, _skin_helicopter];

pol_car_hb1 execVM "policesiren\fn_siren_init.sqf";
pol_car_hb1 execVM "policelights\fn_lights_init.sqf";
pol_car_hb2 execVM "policesiren\fn_siren_init.sqf";
pol_car_hb2 execVM "policelights\fn_lights_init.sqf";
pol_car_hb3 execVM "policesiren\fn_siren_init.sqf";
pol_car_hb3 execVM "policelights\fn_lights_init.sqf";
pol_car_hb4 execVM "policesiren\fn_siren_init.sqf";
pol_car_hb4 execVM "policelights\fn_lights_init.sqf";

pol_car_off1 execVM "policesiren\fn_siren_init.sqf";
pol_car_off1 execVM "policelights\fn_lights_init.sqf";
pol_car_off2 execVM "policesiren\fn_siren_init.sqf";
pol_car_off2 execVM "policelights\fn_lights_init.sqf";
pol_car_off3 execVM "policesiren\fn_siren_init.sqf";
pol_car_off3 execVM "policelights\fn_lights_init.sqf";
pol_car_off4 execVM "policesiren\fn_siren_init.sqf";
pol_car_off4 execVM "policelights\fn_lights_init.sqf";

pol_car_suv1 execVM "policesiren\fn_siren_init.sqf";
pol_car_suv1 execVM "policelights\fn_lights_init.sqf";
pol_car_suv2 execVM "policesiren\fn_siren_init.sqf";
pol_car_suv2 execVM "policelights\fn_lights_init.sqf";
pol_car_suv3 execVM "policesiren\fn_siren_init.sqf";
pol_car_suv3 execVM "policelights\fn_lights_init.sqf";
pol_car_suv4 execVM "policesiren\fn_siren_init.sqf";
pol_car_suv4 execVM "policelights\fn_lights_init.sqf";
pol_car_suv5 execVM "policesiren\fn_siren_init.sqf";
pol_car_suv5 execVM "policelights\fn_lights_init.sqf";
pol_car_suv6 execVM "policesiren\fn_siren_init.sqf";
pol_car_suv6 execVM "policelights\fn_lights_init.sqf";