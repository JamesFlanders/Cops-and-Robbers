/*
	author: George Floros
	description: https://forums.bohemia.net/forums/topic/219165-gf-police-and-Lights-script/
	returns: nothing
*/

_vehicle = _this select 0;
GF_Police_Lights_vehicle = _vehicle;

GF_Police_Lights_Off = 
[_vehicle, 
[
    "Lights Off",
  {
        params ["_target", "_caller", "_actionId", "_arguments"];		
		private _target = _this select 0;
		private _caller = _this select 1;
		private _actionId = _this select 2;
		
		_this execVM "policelights\fn_lights_off.sqf";

		[_target, _actionid] remoteExec ["removeAction"];		
	} 
	,[], 1.5,true,true,"","true",8,false,"",""
]] remoteExec ["addAction"];

	
GF_Police_Lights = true;

[]spawn {
 
//________________	First pair of Blue lights	_____________
 
   _Blue_Light = [0.1, 0.1, 20]; 		

   _Blue_Left_Light_1 = "#lightpoint" createVehicle getpos GF_Police_Lights_vehicle;   
   _Blue_Left_Light_1 setLightColor _Blue_Light; 
   _Blue_Left_Light_1 setLightBrightness 0.2;  
   _Blue_Left_Light_1 setLightAmbient [0.1,0.1,1]; 
   _Blue_Left_Light_1 setLightAttenuation [0.181, 0, 1000, 130]; 
   _Blue_Left_Light_1 setLightIntensity 10;
   _Blue_Left_Light_1 setLightFlareSize 0.40;
   _Blue_Left_Light_1 setLightFlareMaxDistance 150;
   _Blue_Left_Light_1 setLightUseFlare true;

   _Blue_Right_Light_1 = "#lightpoint" createVehicle getpos GF_Police_Lights_vehicle;   
   _Blue_Right_Light_1 setLightColor _Blue_Light; 
   _Blue_Right_Light_1 setLightBrightness 0.2;  
   _Blue_Right_Light_1 setLightAmbient [0.1,0.1,1]; 
   _Blue_Right_Light_1 setLightAttenuation [0.181, 0, 1000, 130]; 
   _Blue_Right_Light_1 setLightIntensity 10;
   _Blue_Right_Light_1 setLightFlareSize 0.40;
   _Blue_Right_Light_1 setLightFlareMaxDistance 150;
   _Blue_Right_Light_1 setLightUseFlare true;

   
   //________________	Second pair of Blue lights	_____________	

   _Blue_Left_Light_2 = "#lightpoint" createVehicle getpos GF_Police_Lights_vehicle;   
   _Blue_Left_Light_2 setLightColor _Blue_Light; 
   _Blue_Left_Light_2 setLightBrightness 0.2;  
   _Blue_Left_Light_2 setLightAmbient [0.1,0.1,1]; 
   _Blue_Left_Light_2 setLightAttenuation [0.181, 0, 1000, 130]; 
   _Blue_Left_Light_2 setLightIntensity 10;
   _Blue_Left_Light_2 setLightFlareSize 0.40;
   _Blue_Left_Light_2 setLightFlareMaxDistance 150;
   _Blue_Left_Light_2 setLightUseFlare true;

   _Blue_Right_Light_2 = "#lightpoint" createVehicle getpos GF_Police_Lights_vehicle;   
   _Blue_Right_Light_2 setLightColor _Blue_Light; 
   _Blue_Right_Light_2 setLightBrightness 0.2;  
   _Blue_Right_Light_2 setLightAmbient [0.1,0.1,1]; 
   _Blue_Right_Light_2 setLightAttenuation [0.181, 0, 1000, 130]; 
   _Blue_Right_Light_2 setLightIntensity 10;
   _Blue_Right_Light_2 setLightFlareSize 0.40;
   _Blue_Right_Light_2 setLightFlareMaxDistance 150;
   _Blue_Right_Light_2 setLightUseFlare true;


   //________________	one pairs of Red lights	_____________
 
   _Red_Light = [0.1, 0.1, 20];

   _Red_Left_Light_1 = "#lightpoint" createVehicle getpos GF_Police_Lights_vehicle;   
   _Red_Left_Light_1 setLightColor _Red_Light; 
   _Red_Left_Light_1 setLightBrightness 0.2;  
   _Red_Left_Light_1 setLightAmbient [0.1,0.1,1]; 
   _Red_Left_Light_1 setLightAttenuation [0.181, 0, 1000, 130]; 
   _Red_Left_Light_1 setLightIntensity 10;
   _Red_Left_Light_1 setLightFlareSize 0.40;
   _Red_Left_Light_1 setLightFlareMaxDistance 150;
   _Red_Left_Light_1 setLightUseFlare true;

   _Red_Right_Light_1 = "#lightpoint" createVehicle getpos GF_Police_Lights_vehicle;   
   _Red_Right_Light_1 setLightColor _Red_Light; 
   _Red_Right_Light_1 setLightBrightness 0.2;  
   _Red_Right_Light_1 setLightAmbient [0.1,0.1,1]; 
   _Red_Right_Light_1 setLightAttenuation [0.181, 0, 1000, 130]; 
   _Red_Right_Light_1 setLightIntensity 10;
   _Red_Right_Light_1 setLightFlareSize 0.40;
   _Red_Right_Light_1 setLightFlareMaxDistance 150;
   _Red_Right_Light_1 setLightUseFlare true;
   
   
//________________	Check the type of vehicle to set the position of the lights	_____________
   
switch true do {

case(typeOf vehicle GF_Police_Lights_vehicle == "C_SUV_01_F") : {
//	systemchat "position of the lights for C_SUV_01_F";

_Blue_Left_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [-0.50, 0.85, -0.15]];
_Blue_Right_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [0.50, 0.85, -0.15]];
_Blue_Left_Light_2 lightAttachObject [GF_Police_Lights_vehicle, [-0.25, 0.85, -0.15]];
_Blue_Right_Light_2 lightAttachObject [GF_Police_Lights_vehicle, [0.25, 0.85, -0.15]];

_Red_Left_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [-0.15, 0.85, -0.15]];
_Red_Right_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [0.15, 0.85, -0.15]];
};

case(typeOf vehicle GF_Police_Lights_vehicle == "C_Offroad_01_F") : {
//	systemchat "position of the lights for C_Offroad_01_F";

_Blue_Left_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [-0.55, 0.0, 0.54]];
_Blue_Right_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [0.55, 0.0, 0.54]];
_Blue_Left_Light_2 lightAttachObject [GF_Police_Lights_vehicle, [-0.25, 0.0, 0.54]];
_Blue_Right_Light_2 lightAttachObject [GF_Police_Lights_vehicle, [0.25, 0.0, 0.54]];

_Red_Left_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [-0.15, 0.0, 0.54]];
_Red_Right_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [0.15, 0.0, 0.54]];
};

case((typeOf vehicle GF_Police_Lights_vehicle == "C_Hatchback_01_sport_F") or (typeOf vehicle GF_Police_Lights_vehicle == "C_Hatchback_01_F")) : {
//	systemchat "position of the lights for Hatchback";

_Blue_Left_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [-0.50, 1.15, -0.15]];
_Blue_Right_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [0.50, 1.15, -0.15]];
_Blue_Left_Light_2 lightAttachObject [GF_Police_Lights_vehicle, [-0.25, 1.15, -0.15]];
_Blue_Right_Light_2 lightAttachObject [GF_Police_Lights_vehicle, [0.25, 1.15, -0.15]];

_Red_Left_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [-0.15, 1.15, -0.15]];
_Red_Right_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [0.15, 1.15, -0.15]];
};

};	
	
_Blue_Left_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [-0.40, -0.05, 0.33]];
_Blue_Right_Light_1 lightAttachObject [GF_Police_Lights_vehicle, [0.40, -0.05, 0.33]];
_Blue_Left_Light_2 lightAttachObject [GF_Police_Lights_vehicle, [-0.26, -0.05, 0.33]];
_Blue_Right_Light_2 lightAttachObject [GF_Police_Lights_vehicle, [0.26, -0.05, 0.33]];
	
   _leftRed = true;
   
while{GF_Police_Lights} do {  
     if(_leftRed) then {  
    _leftRed = false; 

	//	hintsilent "left";	  
 
_Blue_Right_Light_1 setLightBrightness 0;
_Blue_Right_Light_2 setLightBrightness 3; 
_Red_Left_Light_1 setLightBrightness 3;
sleep 0.01; 
_Blue_Left_Light_1 setLightBrightness 3; 
_Blue_Left_Light_2 setLightBrightness 0;
_Red_Right_Light_1 setLightBrightness 0;  
sleep 0.01; 
_Blue_Left_Light_1 setLightBrightness 0; 
_Blue_Left_Light_2 setLightBrightness 3;
_Red_Right_Light_1 setLightBrightness 3;   
sleep 0.01; 
_Blue_Right_Light_1 setLightBrightness 3; 
_Blue_Right_Light_2 setLightBrightness 0; 
_Red_Left_Light_1 setLightBrightness 0; 
    
	}else{  
	
    _leftRed = true;  

	//	hintsilent "right";	
	
_Blue_Left_Light_1 setLightBrightness 0;
_Blue_Left_Light_2 setLightBrightness 3; 
_Red_Right_Light_1 setLightBrightness 3;   
sleep 0.01; 
_Blue_Right_Light_1 setLightBrightness 3;
_Blue_Right_Light_2 setLightBrightness 0;  
_Red_Left_Light_1 setLightBrightness 0; 
sleep 0.01; 
_Blue_Right_Light_1 setLightBrightness 0;
_Blue_Right_Light_2 setLightBrightness 3;   
_Red_Left_Light_1 setLightBrightness 3;  
sleep 0.01; 
_Blue_Left_Light_1 setLightBrightness 3;
_Blue_Left_Light_2 setLightBrightness 0;   
_Red_Right_Light_1 setLightBrightness 0;
    };  
     sleep 0.05;  
   };  
   deleteVehicle _Blue_Left_Light_1;
   deleteVehicle _Blue_Right_Light_1;
   deleteVehicle _Blue_Left_Light_2;
   deleteVehicle _Blue_Right_Light_2;
   deleteVehicle _Red_Left_Light_1;
   deleteVehicle _Red_Right_Light_1;  
};  