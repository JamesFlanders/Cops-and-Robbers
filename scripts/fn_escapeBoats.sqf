/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_escapeBoats = _this select 0;
_escapeBoatsAmount = _this select 1; 

_activeBoats = [];

//Select the '_escapeBoatsAmount' amount of boats to be active
while {(count _activeBoats) < _escapeBoatsAmount} do {
	_boat = _escapeBoats call BIS_fnc_selectRandom;
	_activeBoats pushBack _boat;
	_markerName = format ["mar_%1", str _boat];
	_marker = createMarker [_markerName, getPosWorld _boat];
	_markerName setMarkerType "mil_box";
	_markerName setMarkerText format ["Escapeboat %1", (_activeBoats find _boat) + 1];
	_markerName setMarkerColor "ColorOPFOR";
	_markerName setMarkerPos getPosWorld _boat;
	_boat addAction ["<t color='#990000' size='1.2'><img size='1.2' image='\a3\ui_f\data\Map\Markers\Military\start_CA.paa'/> Escape the island</t>", "scripts\fn_escape.sqf"];
	_escapeBoats deleteAt (_escapeBoats find _boat);
};

//Remove all inactive boats from the map
{
	if (!(_x in _activeBoats)) then {
		deleteVehicle _x;
	};
} forEach _escapeBoats;