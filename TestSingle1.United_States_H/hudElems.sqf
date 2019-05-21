hint "Showing HUD...";

showHUD true;
rotorRpmMain = (rotorsRpmRTD falconN01) select 0;//main rotor
lastRpm = 0;
roundedRpm=0;
while {alive player} do {
	rotorRpmMain = (rotorsRpmRTD falconN01) select 0;//main rotor
	roundedRpm = [rotorRpmMain,1,9] call BIS_fnc_roundNum; // should return rounded rotor RPM
	if (roundedRpm != lastRpm && roundedRpm > 1) then
	{
		hint format ["%1", roundedRpm];
	};
	lastRpm = roundedRpm;
	sleep 1;
};