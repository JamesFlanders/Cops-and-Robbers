/*
	author: George Floros
	description: https://forums.bohemia.net/forums/topic/219165-gf-police-and-Lights-script/
	returns: nothing
*/

diag_log "//________________ GF_Siren_Init.sqf _____________";


_Siren_off_entering_vehicle  = false;
_Siren_off_exiting_vehicle 	 = false;


_this addEventHandler ["GetIn", {
	params ["_vehicle", "_role", "_unit", "_turret"];

GF_Police_Siren = false;

/*	
if(_Siren_off_entering_vehicle) then {
GF_Police_Siren = false;
systemchat "_Siren_off_entering_vehicle";
};
*/
	private "_car";
	_car = _this select 0;

GF_Police_Siren_On = 
[_car, 
[
    "Siren On",
 
  {
        params ["_target", "_caller", "_actionId", "_arguments"];		
		private _target = _this select 0;
		private _caller = _this select 1;
		private _actionId = _this select 2;
				
		_this execVM "policesiren\fn_siren_on.sqf";

		[_target, _actionid] remoteExec ["removeAction"];	
	},[], 1.5,true,true,"","true",8,false,"",""
]] remoteExec ["addAction"];
	
}];

publicVariable "GF_Police_Siren";
publicVariable "GF_Police_Siren_On";
publicVariable "GF_Police_Siren_Off";

_this addEventHandler ["GetOut", {
	params ["_vehicle", "_role", "_unit", "_turret"];

GF_Police_Siren = false;
/*	
if(_Siren_off_exiting_vehicle) then {
GF_Police_Siren = false;
systemchat "_Siren_off_exiting_vehicle";
};
*/	
	private "_car";
	_car = _this select 0;
	_car remoteExec [ "RemoveAllActions",0,true];
}];