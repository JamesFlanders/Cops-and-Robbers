/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_oldUnit = _this select 0;
_killer = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

if (side _killer == independent && side _oldUnit == west) then {
	balance = balance + 250;
	[_caller, "Has killed a police officer and obtained €250"] remoteExec ["sideChat", 0];
	publicVariable "balance";
};