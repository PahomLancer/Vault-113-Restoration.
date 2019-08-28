#if !defined(MAP_FILE)

		#define TITLESCREEN "title" //Add an image in misc/fullscreen.dmi, and set this define to the icon_state, to set a custom titlescreen for your map

		#define MINETYPE "lavaland"

		#include "map_files\SierraMadre\sierramadre.dmm"
		///#include "map_files\TexasWasteland\z2.dmm"
		///#include "map_files\debug\wasteland.dmm"
		///#include "map_files\TexasWasteland\navarro.dmm"
		///#include "map_files\TexasWasteland\fartexas.dmm"
        ///#include "map_files\TexasWasteland\z3.dmm"

		#define MAP_PATH "map_files/SierraMadre"
        #define MAP_FILE "sierramadre.dmm"
        #define MAP_NAME "Sierra Madre Wasteland"
        #define MAP_FACTIONS_LIST list("casino", "none", "none_npc","coc")

		#define MAP_TRANSITION_CONFIG list()

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring wasteland debug.

#endif
