# fetch project
include(FetchContent)
FetchContent_Declare(
		EnkiNet
		GIT_REPOSITORY https://github.com/zephilinox/EnkiNet
		GIT_TAG        d51333520c7bc3daf255e626fee4fb3d25b32734)

FetchContent_GetProperties(EnkiNet)
if(NOT EnkiNet_POPULATED)
	FetchContent_Populate(EnkiNet)
	add_subdirectory(${enkinet_SOURCE_DIR} ${enkinet_BINARY_DIR})
endif()

target_include_directories(
		EnkiNet
		INTERFACE SYSTEM
		${EnkiNetProject_SOURCE_DIR}/src)

add_dependencies(MyGame EnkiNet)
target_link_libraries(MyGame EnkiNet)