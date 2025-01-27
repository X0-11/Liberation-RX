_unit = _this select 0;

// "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

// "Add weapons";
_unit addWeapon "UK3CB_CZ75";
_unit addHandgunItem "UK3CB_CZ75_9_20Rnd";

// "Add containers";
_unit forceAddUniform "UK3CB_CHD_O_U_CombatUniform_01";
_unit addVest "rhsgref_chicom_m88";

// "Add items to containers";
for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_m18_yellow";};
for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_CZ75_9_20Rnd";};
_unit addHeadgear "UK3CB_H_Beanie_02_Camo";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";

// "Set identity";
[_unit,"GreekHead_A3_02","male01eng"] call BIS_fnc_setIdentity;
