/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_target = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

if (side _caller == independent) then {

	if (balance > 0) then {
		"EndCriminals" call BIS_fnc_endMissionServer;
		"Criminals have won!" remoteExec ["hintSilent"]; //DEBUG
	} else {
		"End2Police" call BIS_fnc_endMissionServer;
		"Police have won!" remoteExec ["hintSilent"]; //DEBUG
	};

} else {
	"You're not a criminal!" remoteExec ["hintSilent", _caller];
};