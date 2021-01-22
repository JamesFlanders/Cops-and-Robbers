/*
	author: George Floros
	description: https://forums.bohemia.net/forums/topic/219165-gf-police-and-Lights-script/
	returns: nothing
*/

_vehicle = _this select 0;

GF_Police_Lights = false;

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