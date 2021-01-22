/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

cooldown = 20;

while {cooldown > 0} do {
	cooldown = cooldown - 1;
	publicVariable "cooldown";
	sleep 1;
};