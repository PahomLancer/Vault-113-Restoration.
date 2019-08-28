#if !defined(MAP_FILE)

		#define TITLESCREEN "title" //Add an image in misc/fullscreen.dmi, and set this define to the icon_state, to set a custom titlescreen for your map

		#define MINETYPE "lavaland"
		#include "map_files\debug\turbo_wasteland.dmm"
        //#include "map_files\Denwer\denwersurface.dmm"
        //#include "map_files\Denwer\denwersewers.dmm"
        #include "RandomZLevels\centcomAway.dmm"

		#define MAP_PATH "map_files/Denwer"
        #define MAP_FILE "denwersurface.dmm"
        #define MAP_NAME "Denwer Wasteland"
		#define MAP_FACTIONS_LIST list("vault", "vault_npc", "bs", "bs_npc", "enclave", "enclave_npc", "none", "none_npc", "city", "city_npc", "raiders", "raiders_npc","ncr", "ncr_npc","legion","legion_npc","followers","followers_npc","coc")

		#define MAP_TRANSITION_CONFIG list()

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring wasteland debug.

#endif