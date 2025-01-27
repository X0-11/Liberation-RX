// Use this file to set LRX Mission Parameters when :
// you can't use server.cfg (on dedicated server)
// you want play solo (editing mission_params.hpp no more needd)
// easy to keep your settings when upgrading misson

// GRLIB_introduction = 1;                 // Introduction - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_deployment_cinematic = 1;         // Deployment cimematic - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_unitcap = 1;                      // Maximum amount AI units - [default 1] - values = [0.5,0.75,1,1.25,1.5,2] - Text {50%,%75,%100,%125,%150,%200}
// GRLIB_difficulty_modifier = 1.25;       // Difficulty - [default 1] - values = [0.5,0.75,1,1.25,1.5,2,4,10] - Text {Tourist,Easy,Normal,Moderate,Hard,Extreme,Ludicrous,Oh god oh god we are all going to die}
// GRLIB_csat_aggressivity = 2;            // CSAT aggression - [default 1] - values = [0.25,0.5,1,2,4] - Text {Anemic,Weak,Normal,Strong,Extreme}
// GRLIB_adaptive_opfor = 1;               // Hostile presence adapts to player count - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_sector_radius = 0;                // The size of the sector - [default 0] - values = {0,300,400,500,600,700,800,900,1000,1200,1500};
// GRLIB_day_factor = 1;                   // Day duration (multiplier) - [default 1] - values = [0.25, 0.5, 1, 1.5, 2, 2.5, 3, 5, 10, 20, 30, 60]
// GRLIB_night_factor = 1;                 // Night duration (multiplier) - [default 1] - values = [0.25, 0.5, 1, 1.5, 2, 2.5, 3, 5, 10, 20, 30, 60]
// GRLIB_thermic = 1;                      // Enable Thermal Equipment [default 1] - values = [2,1,0] - Text {Enabled,Only at night,Disabled}
// GRLIB_enable_arsenal = 1;               // Enable the Arsenal [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_filter_arsenal = 1;               // Arsenal Filter Mode [default 1] - values = [0,1,2,3] - Text {Disabled,"Soft","Strict","Strict+MOD"}
// GRLIB_weather_param = 4;                // Weather - [default 4] - values = [1,2,3,4] - Text {Always Sunny,Random without rain,Random Cloudy,Random}
// GRLIB_resources_multiplier = 1;         // Resource multiplier - [default 1] - values = [0.25,0.5,0.75,1,1.25,1.5,2,3,5,10,20,50] - Text {x0.25,x0.5,x1,x1.25,x1.5,x2,x3,x5,x10,x20,x50}
// GRLIB_fatigue = 0;                      // Stamina - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_revive = 3;                       // PAR revive - [default 3] - values = [3,2,1,0] - Text {Enabled - Everyone can revive,Enabled - Everyone can revive using Medikit/FAK,Enabled - Only medics can revive,Disabled}
// GRLIB_tk_mode = 0;                      // Teamkill Mode [default 0] - values = [0,1,2] - Text {Strict,Relax,Disabled}
// GRLIB_tk_count = 4;                     // Teamkill Warning Count [default 4] - values = [3, 4, 5, 6, 7, 8, 9, 10] - Text {3, 4, 5, 6, 7, 8, 9, 10}
// GRLIB_civilian_activity = 1;            // Cilivilian activity - [default 1] - values = [0,0.5,1,2] - Text {None,Reduced,Normal,Increased}
// GRLIB_wildlife_manager = 1;             // Wildlife Manager - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_passive_income = 0;               // Replace ammo box spawns with passive income - [default 0] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_ammo_bounties = 1;                // Ammunition bounties - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_halo_param = 1;                   // HALO jump - [default 1] - values = [1,5,10,15,20,30,0] - Text {Enabled - no cooldown,Enabled - 5min cooldown,Enabled - 10min cooldown,Enabled - 15min cooldown,Enabled - 20min cooldown,Enabled - 30min cooldown,Disabled}
// GRLIB_blufor_defenders = 1;             // BLUFOR defenders in owned sectors - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_maximum_fobs = 5;                 // Maximum number of FOBs allowed - [default 26] - values = [3,5,7,10,15,20,26] - Text {3,5,7,10,15,20,26}
// GRLIB_fob_type = 0;                     // The Startup Fob Vehicle - [default 0] - values = [1,0] - Text {Huron,Truck}
// GRLIB_huron_type = 0;                   // The type of Huron - [default 0] - values = [0,1,2,3] - Text {Disabled, "CH-67 Huron", "CH-49 Mohawk", "UH-80 Ghost Hawk"}
// GRLIB_squad_size = 2;                   // AI per squad at startup [default 2]  - values = {0,1,2,3,4,5,6}
// GRLIB_max_squad_size = 5;               // AI recruitment limit per squad [default 7] - values = {0,1,2,3,4,5,6,7}
// GRLIB_max_spawn_point = 2;              // Spawn Point limit per player. [default 2] - values = {0,1,2,4}
// GRLIB_permissions_param = 1;            // Permissions management - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_permission_vehicles = 1;          // Enable Vehicles Ownership - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_cleanup_vehicles = 1800;          // Cleanup abandoned vehicles outside FOBs - values = {0,900,1800,3600,7200,14400}
// GRLIB_autosave_timer = 3600;            // LRX Game Auto Save Delay - values = {0,300,900,1800,3600,7200}
// GRLIB_admin_menu = 1;                   // Enable the Admin Cheat Menu [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_hide_opfor = 1;                   // Hide Opfor marker - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_forced_loadout = 0;               // Force player default equipment  [default 0] - values = [0,1,2] - Text {Disabled,Preset1,Preset2}
// GRLIB_mod_preset_west = 0;              // Select MOD Preset for Friendly side - value =  { 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25 } Text = "A3_BLU", "A3_OPF",  etc...
// GRLIB_mod_preset_east = 0;              // Select MOD Preset for Enemy side - values = { 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25 } text "A3_OPF", "A3_BLU", "A3_IND",  etc...
// GRLIB_disable_death_chat = 0;           // Disable chat/voice if wounded  [default 0] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_fancy_info = 1;                   // Enable colorfull, fancy Informations [default 2] - values = [2,1,0] - Text {Enabled,Info,Disabled}
// GRLIB_use_whitelist = 1;                // Use the commander whilelist - [default 1] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_use_exclusive = 0;                // Use the Exclusive whilelist to login - [default 0] - values = [1,0] - Text {Enabled,Disabled}
// GRLIB_param_wipe_savegame_1 = 0;        // Wipe Savegame - [default 0] - values = [0,1] - Text {No, Savegame will be wiped no recovery possible}
// GRLIB_param_wipe_savegame_2 = 0;        // Confirm: Wipe Savegame - [default 0] - values = [0,1] - Text {No, Savegame will be wiped no recovery possible}
// GRLIB_param_wipe_keepscore = 0;         // Keep the Players datas (score/permissions) - [default 0] - values = [0,1] - Text {Disabled,Enabled}
// GRLIB_force_load = 0;                   // Force game loading (despite errors)  [default 0] - values = [0,1] - Text {Yes,No}
