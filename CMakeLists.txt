CMAKE_MINIMUM_REQUIRED(VERSION 3.22)

project(MetaballsProj)

set(CMAKE_BUILD_TYPE Debug)

set(CMAKE_BUILD_TYPE RelWithDebInfo)

add_executable(Metaballs ${CMAKE_SOURCE_DIR}/main.cpp)

target_include_directories(Metaballs PUBLIC ${CMAKE_SOURCE_DIR}/include)

add_subdirectory(${CMAKE_SOURCE_DIR}/src)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_subdirectory(${CMAKE_SOURCE_DIR}/vendor/glfw)

target_link_libraries(Metaballs glfw)

install(TARGETS Metaballs DESTINATION ${CMAKE_INSTALL_PREFIX}/)
file(COPY ${CMAKE_SOURCE_DIR}/res DESTINATION ${CMAKE_INSTALL_PREFIX})
