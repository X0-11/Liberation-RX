// Initalize Side
GRLIB_arsenal_side = WEST;

//Blacklist Items
blacklisted_bag = [
	"CUP_B_M2_Gun_Bag",
	"CUP_B_M2_MiniTripod_Bag",
	"CUP_B_M252_Bipod_Bag",
	"CUP_B_M252_Gun_Bag",
	"CUP_B_Mk19_Gun_Bag",
	"CUP_B_Mk19_Tripod_Bag",
	"B_Static_Designator_01_weapon_F",
	"B_W_Static_Designator_01_weapon_F",
	"O_Static_Designator_02_weapon_F",
	"B_UAV_06_backpack_F",
	"O_UAV_06_backpack_F",
	"I_UAV_06_backpack_F",
	"B_UAV_06_medical_backpack_F",
	"O_UAV_06_medical_backpack_F",
	"I_UAV_06_medical_backpack_F",
	"B_UGV_02_Science_backpack_F",
	"O_UGV_02_Science_backpack_F",
	"I_UGV_02_Science_backpack_F",
	"B_UGV_02_Demining_backpack_F",
	"O_UGV_02_Demining_backpack_F",
	"I_UGV_02_Demining_backpack_F",
	"Land_TentDome_F",
	"B_Respawn_Sleeping_bag_blue_F",
	"B_Respawn_Sleeping_bag_brown_F",
	"B_Respawn_TentDome_F",
	"B_Respawn_Sleeping_bag_F",
	"B_Respawn_TentA_F",
	"B_Patrol_Respawn_bag_F",
	"B_Patrol_Respawn_tent_F",
	"B_HMG_01_support_F",
	"O_HMG_01_support_F",
	"I_HMG_01_support_F",
	"B_HMG_01_support_high_F",
	"O_HMG_01_support_high_F",
	"I_HMG_01_support_high_F",
	"I_HMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"O_HMG_01_A_weapon_F",
	"O_HMG_01_weapon_F",
	"B_HMG_01_weapon_F",
	"I_HMG_01_weapon_F",
	"I_HMG_01_high_weapon_F",
	"O_HMG_01_high_weapon_F",
	"B_HMG_01_high_weapon_F",
	"B_HMG_01_support_grn_F",
	"B_HMG_01_Weapon_grn_F",
	"B_HMG_02_high_weapon_F",
	"B_G_HMG_02_high_weapon_F",
	"I_HMG_02_high_weapon_F",
	"O_HMG_02_high_weapon_F",
	"B_HMG_02_support_F",
	"B_G_HMG_02_support_F",
	"I_HMG_02_support_F",
	"O_HMG_02_support_F",
	"B_HMG_02_support_high_F",
	"B_G_HMG_02_support_high_F",
	"I_HMG_02_support_high_F",
	"O_HMG_02_support_high_F",
	"B_HMG_02_weapon_F",
	"B_G_HMG_02_weapon_F",
	"I_HMG_02_weapon_F",
	"O_HMG_02_weapon_F",
	"I_GMG_01_A_weapon_F",
	"O_GMG_01_A_weapon_F",
	"B_GMG_01_A_weapon_F",
	"O_GMG_01_weapon_F",
	"I_GMG_01_weapon_F",
	"B_GMG_01_weapon_F",
	"B_GMG_01_high_weapon_F",
	"I_GMG_01_high_weapon_F",
	"O_GMG_01_high_weapon_F",
	"I_Mortar_01_support_F",
	"B_Mortar_01_support_F",
	"O_Mortar_01_support_F",
	"B_Mortar_01_weapon_F",
	"O_Mortar_01_weapon_F",
	"I_Mortar_01_weapon_F",
	"B_AA_01_weapon_F",
	"O_AA_01_weapon_F",
	"I_AA_01_weapon_F",
	"B_AT_01_weapon_F",
	"O_AT_01_weapon_F",
	"I_AT_01_weapon_F",
	"I_UAV_01_backpack_F",
	"B_UAV_01_backpack_F",
	"O_UAV_01_backpack_F",
	"B_Mortar_01_support_grn_F",
	"B_GMG_01_Weapon_grn_F",
	"B_Mortar_01_Weapon_grn_F",
	"B_Protagonist_VR_F",
	"U_B_Protagonist_VR",
	"O_Protagonist_VR_F",
	"U_O_Protagonist_VR",
	"I_Protagonist_VR_F",
	"U_I_Protagonist_VR",
	"C_Protagonist_VR_F",
	"U_C_Protagonist_VR"
];

blacklisted_weapon = [
	"optic_Nightstalker",
	"optic_tws",
	"optic_tws_mg",
	"NVGoggles_tna_F",
	"NVGogglesB_blk_F",
	"NVGogglesB_grn_F",
	"NVGogglesB_gry_F",
	"H_HelmetO_ViperSP_hex_F",
	"H_HelmetO_ViperSP_ghex_F",
	"U_O_V_Soldier_Viper_hex_F",
	"U_O_V_Soldier_Viper_F",
	"O_V_Soldier_Viper_F",
	"O_V_Soldier_Viper_hex_F",
	"CUP_optic_CWS",
	"CUP_optic_AN_PAS_13c1",
	"CUP_optic_AN_PAS_13c2",
	"CUP_optic_GOSHAWK",
	"CUP_optic_GOSHAWK_RIS"	
];

GRLIB_whitelisted_from_arsenal = [
	"Medikit",
	"FirstAidKit",
	"ToolKit",
	"ItemGPS",
	"Laserdesignator",
	"Binocular",
	"MineDetector",
	"Rangefinder"
];

GRLIB_whitelisted_from_arsenal_limited= [
	"optic_MRCO",
	"optic_Hamr",
	"optic_Arco_blk_F",
	"optic_ERCO_blk_F",
	"optic_ERCO_snd_F",
	"Medikit",
	"FirstAidKit",
	"ToolKit",
	"ItemGPS",
	"Laserdesignator",
	"Binocular",
	"MineDetector",
	"Rangefinder"
];