//Begin ALL Units (all sides)
{
  _x unassignItem "NVGoggles";
  _x removeItem "NVGoggles";
  _x unassignItem "NVGoggles_OPFOR";
  _x removeItem "NVGoggles_OPFOR";
  _x removePrimaryWeaponItem "acc_pointer_IR";
}
forEach allUnits;
//End All Units


//Begin 'Assault Group' Only
{
  //Filter out Costa, since he's different
  if (format ["%1", _x] != "b_costa") then {
    //_x addHeadgear "H_HelmetSpecB_paint1"; //grass
    //_x addHeadgear "H_HelmetSpecB_paint2"; //original helmet, desert
    _x addHeadgear "H_HelmetSpecB_snakeskin"; //enhanced, snakeskin
    //_x addHeadgear "H_HelmetB_light_desert";  //light, desert
    //_x addHeadgear "H_HelmetB_light_snakeskin"; //light snakeskin
    _x addGoggles "G_Shades_Black";

    //Task force Aegis patch
    [_x,"TFAegis"] call bis_fnc_setUnitInsignia;
  
    //Force specific optics for every one
    if (((primaryWeaponItems _x) select 2) == "optic_Holosight" || primaryWeaponItems _x select 2 == "optic_Aco" || primaryWeaponItems _x select 2 == "") then {
      _x removePrimaryWeaponItem "optic_Holosight";
      _x addPrimaryWeaponItem "optic_Arco";
    };

    //Autogunners get special optics
    if (format ["%1", _x] == "b_jackson" || format ["%1", _x] == "b_campbell") then {
      _x addPrimaryWeaponItem "optic_Hamr";
    };

    //Add a backpack to those who don't have one
    if (backpack _x == "") then {
      //_x addBackpack "B_AssaultPack_rgr";
      _x addBackpack "B_AssaultPack_mcamo";
    };
  } else
  {
    //Costa only
    _x addGoggles "H_Bandanna_sgg";
    _x addPrimaryWeaponItem "optic_Aco";
  };

  _x addPrimaryWeaponItem "acc_flashlight";

}
forEach units assaultgroup;
//End


//For specific units

//Roster
//1 - Armstrong - Squad Leader
//2 - Jackson - Autorifleman
//3 - Campbell - Autorifleman
//4 - Adams - Repair spc
//5 - Bennett - Medic
//6 - Larkin - Medic
//7 - Martinez - Sharpshooter
//8 - Levine - Ammo bearer
//9 - Taylor - Rifleman
//10 - McKendrick - Engineer
//11 - Dixon - Explosive Specialist
//12 - Franklin - Asst Mortarman
//13 - Givens - Mortarman
//14 - Lopez - AT Soldier
//15 - Hawkins - AT Soldier
//16 - Costa - Light Rifleman / Driver
//17 - Everett - Medic

//-----------------------------------
//1 - Armstrong - Squad Leader
b_armstrong addGoggles "G_Tactical_Clear";
b_armstrong addItemToVest "Chemlight_yellow";
b_armstrong addItemToVest "Chemlight_yellow";
b_armstrong addItemToVest "Chemlight_yellow";
b_armstrong addItemToVest "Chemlight_blue";
b_armstrong addItemToVest "Chemlight_blue";
b_armstrong addItemToVest "Chemlight_blue";

//-----------------------------------
//2 - Jackson - Autorifleman
//b_jackson addHeadgear "H_HelmetB_black";
b_jackson addGoggles "G_Shades_Red";

//-----------------------------------
//3 - Campbell - Autorifleman

//-----------------------------------
//4 - Adams - Repair spc
b_adams addHeadgear "H_HelmetB_light_snakeskin"; //light snakeskin
clearAllItemsFromBackpack b_adams;
removeBackpack b_adams;
b_adams addBackpack "B_AssaultPack_blk";
b_adams addItemToBackpack "ToolKit";
b_adams addGoggles "G_Lowprofile";

//-----------------------------------
//5 - Bennett - Medic
b_bennett addItemToBackpack "Chemlight_red";
b_bennett addItemToBackpack "Chemlight_red";
b_bennett addItemToBackpack "Chemlight_red";
b_bennett addItemToBackpack "Chemlight_red";
b_bennett addItemToBackpack "Chemlight_red";

//-----------------------------------
//6 - Larkin - Medic
b_larkin addItemToBackpack "Chemlight_red";
b_larkin addItemToBackpack "Chemlight_red";
b_larkin addItemToBackpack "Chemlight_red";
b_larkin addItemToBackpack "Chemlight_red";
b_larkin addItemToBackpack "Chemlight_red";


//-----------------------------------
//7 - Martinez - Sharpshooter
b_martinez addGoggles "G_Shades_Blue";

//-----------------------------------
//8 - Levine - Ammo bearer
clearAllItemsFromBackpack b_levine;
b_levine addItemToBackpack "30Rnd_65x39_caseless_mag";
b_levine addItemToBackpack "30Rnd_65x39_caseless_mag";
b_levine addItemToBackpack "30Rnd_65x39_caseless_mag";
b_levine addItemToBackpack "30Rnd_65x39_caseless_mag";
b_levine addItemToBackpack "30Rnd_65x39_caseless_mag";
b_levine addItemToBackpack "30Rnd_65x39_caseless_mag";
b_levine addItemToBackpack "100Rnd_65x39_caseless_mag";
b_levine addItemToBackpack "100Rnd_65x39_caseless_mag";
b_levine addItemToBackpack "Titan_AP";
//b_levine addItemToBackpack "NLAW_F";
//b_levine addItemToBackpack "HandGrenade";
//b_levine addItemToBackpack "HandGrenade";
//b_levine addItemToBackpack "MiniGrenade";
//b_levine addItemToBackpack "MiniGrenade";
b_levine addItemToBackpack "1Rnd_HE_Grenade_shell";
b_levine addItemToBackpack "1Rnd_HE_Grenade_shell";
b_levine addItemToBackpack "1Rnd_HE_Grenade_shell";
b_levine addItemToBackpack "3Rnd_HE_Grenade_shell";
//b_levine addItemToBackpack "10Rnd_338_Mag";
//b_levine addItemToBackpack "10Rnd_338_Mag";
b_levine addItemToBackpack "20Rnd_762x51_Mag";
b_levine addItemToBackpack "20Rnd_762x51_Mag";

//-----------------------------------
//9 - Taylor - Rifleman
b_taylor addGoggles "G_Bandanna_beast";

//-----------------------------------
//10 - McKendrick - Engineer
b_mckendrick addGoggles "G_Lowprofile";
b_mckendrick addHeadgear "H_HelmetB_light_snakeskin"; //light snakeskin
clearAllItemsFromBackpack b_mckendrick;
removeBackpack b_mckendrick;
b_mckendrick addBackpack "B_AssaultPack_blk";
b_mckendrick addItemToBackpack "ToolKit";

//-----------------------------------
//11 - Dixon - Explosive Specialist
b_dixon addGoggles "G_Lowprofile";
b_dixon addHeadgear "H_HelmetB_light_snakeskin"; //light snakeskin
clearAllItemsFromBackpack b_dixon;
removeBackpack b_dixon;
b_dixon addBackpack "B_AssaultPack_blk";
b_dixon addItemToBackpack "ToolKit";
//b_dixon addItemToBackpack "MineDetector";
//b_dixon addItemToBackpack "APERSBoundingMine_Range_Mag";
//b_dixon addItemToBackpack "APERSBoundingMine_Range_Mag";
//b_dixon addItemToBackpack "APERSBoundingMine_Range_Mag";
b_dixon addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";
b_dixon addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";
b_dixon addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
//b_dixon addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
//b_dixon addItemToBackpack "DemoCharge_Remote_Mag";

//-----------------------------------
//12 - Franklin - Asst Mortarman
b_franklin addHeadgear "H_HelmetB_light_snakeskin"; //light snakeskin
b_franklin addGoggles "G_Bandanna_shades";

//-----------------------------------
//13 - Givens - Mortarman
b_givens addHeadgear "H_HelmetB_light_snakeskin"; //light snakeskin
b_givens addGoggles "G_Bandanna_shades";

//-----------------------------------
//14 - Lopez - AT Soldier
b_lopez addGoggles "G_Combat";
clearAllItemsFromBackpack b_lopez;
b_lopez addItemToBackpack "Titan_AP";
b_lopez addItemToBackpack "Titan_AP";
b_lopez addItemToBackpack "Titan_AP";

//-----------------------------------
//15 - Hawkins - AT Soldier
b_hawkins addGoggles "G_Combat";
clearAllItemsFromBackpack b_hawkins;
b_hawkins addItemToBackpack "Titan_AP";
b_hawkins addItemToBackpack "Titan_AP";
b_hawkins addItemToBackpack "Titan_AP";


//-----------------------------------
//16 - Costa - Light Rifleman / Driver
removeAllWeapons b_costa;
removeAllItems b_costa;
removeAllAssignedItems b_costa;
removeUniform b_costa;
removeVest b_costa;
removeBackpack b_costa;
removeHeadgear b_costa;
removeGoggles b_costa;
b_costa forceAddUniform "U_OG_Guerilla1_1";
b_costa addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {b_costa addItemToUniform "30Rnd_556x45_Stanag";};
b_costa addVest "V_TacVest_oli";
for "_i" from 1 to 4 do {b_costa addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {b_costa addItemToVest "Chemlight_yellow";};
b_costa addItemToVest "HandGrenade";
b_costa addHeadgear "H_MilCap_dgtl";
b_costa addWeapon "arifle_TRG20_F";
b_costa addPrimaryWeaponItem "acc_flashlight";
b_costa addPrimaryWeaponItem "optic_Aco";
b_costa addWeapon "Binocular";
b_costa linkItem "ItemMap";
b_costa linkItem "ItemCompass";
b_costa linkItem "ItemWatch";
b_costa linkItem "ItemRadio";


//-----------------------------------
//17 - Everett - Medic
b_everett addItemToBackpack "Chemlight_red";
b_everett addItemToBackpack "Chemlight_red";
b_everett addItemToBackpack "Chemlight_red";
b_everett addItemToBackpack "Chemlight_red";
b_everett addItemToBackpack "Chemlight_red";


/*
Doesn't apply to this mission
//Adds an option for the player driver of a Marshall APC to turn the rear lights on or off
b_hunter2 setVariable ["rearLightOn", 0, true]; b_hunter2 addAction ["Rear Lights Off", {deleteVehicle leftrearlight; deleteVehicle rightrearlight; b_hunter2 setVariable ["rearLightOn", 0, true];},[],1.5,false,true,"","b_hunter2 getVariable ""rearLightOn"" == 1 AND Alive(_target) AND driver _target == _this"];  b_hunter2 addAction ["Rear Lights On", {leftrearlight = "#lightpoint" createVehicleLocal getPos b_hunter2; leftrearlight setLightBrightness 0.15;  leftrearlight setLightAmbient [1, 1, 0.5];  leftrearlight setLightColor [1, 1, 0.5]; leftrearlight setLightUseFlare true; leftrearlight setLightFlareSize 0.5; leftrearlight setLightFlareMaxDistance 500; leftrearlight attachTo [b_hunter2, [-0.8,-4.85, -0.31]]; rightrearlight = "#lightpoint" createVehicleLocal getPos b_hunter2; rightrearlight setLightBrightness 0.15;  rightrearlight setLightAmbient [1, 1, 0.5];  rightrearlight setLightColor [1, 1, 0.5]; rightrearlight setLightUseFlare true; rightrearlight setLightFlareSize 0.5; rightrearlight setLightFlareMaxDistance 500; rightrearlight attachTo [b_hunter2, [0.8,-4.85, -0.31]]; b_hunter2 setVariable ["rearLightOn", 1, true];},[], 1.5, false, true, "", "b_hunter2 getVariable ""rearLightOn"" == 0 AND Alive(_target) AND driver _target == _this"];

//Adds an action for the player driver of a Hunter to turn the dome light on or off
b_hunter2 setVariable ["domeLightOn", 0, true]; b_hunter2 addAction ["Dome Light Off", {deleteVehicle domelight; b_hunter2 setVariable ["domeLightOn", 0, true];},[],1.5,false,true,"","b_hunter2 getVariable ""domeLightOn"" == 1 AND Alive(_target) AND driver _target == _this"];  b_hunter2 addAction ["Dome Light On", {  deleteVehicle domelight; domelight = "#lightpoint" createVehicleLocal getPos b_hunter2; domelight setLightBrightness 0.08;  domelight setLightAmbient [0.0, 0.0, 0.0];  domelight setLightColor [1.0, 1.0, 0.8]; domelight attachTo [b_hunter2, [-0.1, -0.9, 0.22]]; b_hunter2 setVariable ["domeLightOn", 1, true];},[], 1.5, false, true, "", "b_hunter2 getVariable ""domeLightOn"" == 0 AND Alive(_target) AND driver _target == _this"];

//Adds some shit to cargo
b_hunter2 addItemCargo ["arifle_MXGL_F", 1];
b_hunter2 addItemCargo ["acc_pointer_IR", 1];
b_hunter2 addItemCargo ["Binocular", 1];
b_hunter2 addItemCargo ["V_PlateCarrierSpec_rgr", 1];
b_hunter2 addItemCargo ["H_HelmetB_desert", 1];
b_hunter2 addItemCargo ["H_HelmetCrew_B", 1];
b_hunter2 addItemCargo ["H_MilCap_ocamo", 1];
b_hunter2 addItemCargo ["U_B_CombatUniform_mcam", 1];
b_hunter2 addItemCargo ["U_B_PilotCoveralls", 1];
b_hunter2 addItemCargo ["Chemlight_red", 5];
b_hunter2 addItemCargo ["Chemlight_yellow", 5];
b_hunter2 addItemCargo ["Chemlight_blue", 5];
b_hunter2 addItemCargo ["acc_Flashlight", 6];
*/

// TcB AIS Wounding System --------------------------------------------------------------------------
if (!isDedicated) then {
	TCB_AIS_PATH = "ais_injury\";
	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {playableUnits} else {switchableUnits});		// execute for every playable unit
	
  //Using this
	{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (units assaultgroup);													// only own group - you cant help strange group members
	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (units assaultgroup2);

	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach [p1,p2,p3,p4,p5];														// only some defined units
};
// --------------------------------------------------------------------------------------------------------------

