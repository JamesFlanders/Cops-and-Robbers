/*
	author: George Floros
	description: https://forums.bohemia.net/forums/topic/219165-gf-police-and-Lights-script/
	returns: nothing
*/

diag_log "//________________ GF_Police_Lights_init.sqf _____________";

_Lights_off_entering_vehicle = false;
_Lights_off_exiting_vehicle  = false;

	
_this addEventHandler ["GetIn", {
	params ["_vehicle", "_role", "_unit", "_turret"];

if(_Lights_off_entering_vehicle) then {
GF_Police_Lights = false;
systemchat "_Lights_off_entering_vehicle";
};	

	private "_vehicle";
	_vehicle = _this select 0;

GF_Police_Lights_On = 
[_vehicle, 
[
    "Lights On", 
 
  {
        params ["_target", "_caller", "_actionId", "_arguments"];		
		private _target = _this select 0;
		private _caller = _this select 1;
		private _actionId = _this select 2;
				
		_this execVM "policelights\fn_lights_on.sqf";		

		[_target, _actionid] remoteExec ["removeAction"];	
	},[], 1.5,true,true,"","true",8,false,"",""
]] remoteExec ["addAction"];
	
}];

publicVariable "GF_Police_Lights";
publicVariable "GF_Police_Lights_On";
publicVariable "GF_Police_Lights_Off";

_this addEventHandler ["GetOut", {
	params ["_vehicle", "_role", "_unit", "_turret"];
	
if(_Lights_off_exiting_vehicle) then {
GF_Police_Lights = false;
systemchat "_Lights_off_exiting_vehicle";
};	
	
	private "_vehicle";
	_vehicle = _this select 0;
	_vehicle remoteExec [ "RemoveAllActions",0,true];
}];