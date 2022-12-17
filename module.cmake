# module.cmake
# creates a module in form of a linkable library
# usage:
#
# set(MODULE_NAME FooModule)
# set(MODULE_SOURCE foo.cpp foo.h)
# set(MODULE_INCLUDE ${CMAKE_SOURCE_DIR}/bar)
# set(MODULE_DEFINITIONS MODULE="Foo")
# set(MODULE_LINK bar::bar)
#
# include(.../module.cmake)

message(STATUS "Configuring modle: ${MODULE_NAME}")

add_library(${MODULE_NAME})
target_sources(${MODULE_NAME} PRIVATE ${MODULE_SOURCE})
target_include_directories(${MODULE_NAME} PUBLIC ${MODULE_INCLUDE})
target_compile_definitions(${MODULE_NAME} PUBLIC ${MODULE_DEFINITIONS})
target_link_libraries(${MODULE_NAME} PRIVATE ${MODULE_LINK})