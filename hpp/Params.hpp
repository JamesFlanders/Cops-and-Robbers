class Params
{
	class Param_Spacer0
    {
            title = "============================================================= Scenario Settings =============================================================";
            values[] = {0};
            texts[] = {""};
            default = 0;
	};

	class Daytime1
	{
		title = "Time";
		texts[] = {"Morning","Day","Evening","Night"};
		values[] = {6,12,18,0};
		default = 12;
		function = "BIS_fnc_paramDaytime";
	};

	class TimeMultiplier2
	{
		title = "Time multiplier";
		values[] = {1,5,10,15,20,25,30,35,40,45,50,55,60};
		texts[] = {"1x (Realtime)","5x","10x","15x","20x","25x","30x","35x","40x","45x","50x","55x","60x (1m = 1s)"};
		default = 5;
		function = "BIS_fnc_paramTimeAcceleration";
	}

	class Weather3
	{
		title = $STR_Parameters_weather_weather;
		texts[] = {"Clear","Storm"};
		values[] = {0,100};
		default = 0;
		function = "BIS_fnc_paramWeather";
	};

	class Param_Spacer4
    {
            title = "============================================================ Mechanics Settings =============================================================";
            values[] = {0};
            texts[] = {""};
            default = 0;
	};

	class PlayerFatigue5
    {
        title = "Player Fatigue";
        values[] = {0,1};
        texts[] = {"Disabled","Enabled"};
        default = 0;
    };

	class EscapeBoats6
    {
        title = "Player Fatigue";
        values[] = {1,2,3,4,5,6};
        texts[] = {"1","2","3","4","5","6"};
        default = 3;
    };
};