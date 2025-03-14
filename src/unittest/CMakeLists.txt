set (UNITTEST_SRCS
	${CMAKE_CURRENT_SOURCE_DIR}/test.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_address.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_authdatabase.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_activeobject.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_areastore.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_ban.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_collision.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_compression.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_connection.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_filepath.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_inventory.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_irrptr.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_lua.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_map.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_map_settings_manager.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_mapnode.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_modchannels.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_modmetadatadatabase.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_moveaction.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_nodedef.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_noderesolver.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_noise.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_objdef.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_profiler.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_random.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_schematic.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_serialization.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_serveractiveobjectmgr.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_server_shutdown_state.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_settings.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_socket.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_servermodmanager.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_threading.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_utilities.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_voxelarea.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_voxelalgorithms.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_voxelmanipulator.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_gettext.cpp
	PARENT_SCOPE)

set (UNITTEST_CLIENT_SRCS
	${CMAKE_CURRENT_SOURCE_DIR}/test_clientactiveobjectmgr.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_eventmanager.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_gameui.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/test_keycode.cpp
	PARENT_SCOPE)

set (TEST_WORLDDIR ${CMAKE_CURRENT_SOURCE_DIR}/test_world)
set (TEST_SUBGAME_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../games/devtest)
set (TEST_MOD_PATH ${CMAKE_CURRENT_SOURCE_DIR}/test_mod)
set (HELPERS_PATH ${CMAKE_CURRENT_SOURCE_DIR}/helpers)

configure_file(
	"${CMAKE_CURRENT_SOURCE_DIR}/test_config.h.in"
	"${PROJECT_BINARY_DIR}/test_config.h"
)
