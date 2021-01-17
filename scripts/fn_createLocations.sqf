/*
	author: Jens Caenen
	description: none
	returns: nothing
*/

_locations = _this select 0;

{
	//Create map location indication for robbery object
	_divider = [str _x, "_"] call BIS_fnc_splitString;
	_markerName = format ["mar_%1", _x];
	_markerText = format ["%1 %2", _divider select 0, _divider select 1];
	_marker = createMarker [_markerName, getPosWorld _x];
	_markerName setMarkerType "mil_box";
	_markerName setMarkerText _markerText;

	switch (_divider select 0) do {
		case "shop": { 
			_markerName setMarkerColor "ColorIndependent"; 
		};
		case "fuel": {
			_markerName setMarkerColor "colorBLUFOR";		
		};
		case "bank": {
			_markerName setMarkerColor "ColorUNKNOWN";
		};
		default {};
	};
	
	_markerName setMarkerPos getPosWorld _x;

	//Create invincible markerarea around robbery object
	_markerName = format ["zone_%1", _x];
	_marker = createMarker [_markerName, getPosWorld _x];
	_markerName setMarkerShape "ELLIPSE";

	switch (_divider select 0) do {
		case "shop": { 
			_markerName setMarkerColor "ColorIndependent";
			_markerName setMarkerSize [15, 15];	
		};
		case "fuel": {
			_markerName setMarkerColor "colorBLUFOR";	
			_markerName setMarkerSize [15, 15];	
		};
		case "bank": {
			_markerName setMarkerColor "ColorUNKNOWN";
			_markerName setMarkerSize [35, 35];
		};
		default {};
	};

	_markerName setMarkerPos getPosWorld _x;
	//_markerName setMarkerAlpha 0.0;

	//Add action to robbery object
	_x addAction ["<t color='#990000' size='1.2'><img size='1.2' image='\a3\ui_f\data\Map\Markers\Military\warning_CA.paa'/> Start Robbery</t>", "scripts\fn_robbery.sqf"];
} forEach _locations;