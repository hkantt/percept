cmake_minimum_required(VERSION 3.15)
project(percept VERSION 0.1 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Python3 COMPONENTS Interpreter Development REQUIRED)
find_package(pybind11 REQUIRED)

set(IMGUI_DIR ${CMAKE_SOURCE_DIR}/external/imgui)
set(GLAD_DIR ${CMAKE_SOURCE_DIR}/external/glad)
set(GLFW_DIR ${CMAKE_SOURCE_DIR}/external/glfw)

file(GLOB SRC_FILES ${CMAKE_SOURCE_DIR}/src/*.cpp)
file(GLOB IMGUI_SOURCES ${IMGUI_DIR}/src/*.cpp)

add_library(percept MODULE
    ${SRC_FILES}
    ${IMGUI_SOURCES}
    ${GLAD_DIR}/src/gl.c
)

set_target_properties(percept PROPERTIES
    PREFIX ""
    SUFFIX ".pyd"
)

target_include_directories(percept PRIVATE
    ${CMAKE_SOURCE_DIR}/include
    ${IMGUI_DIR}/include
    ${GLAD_DIR}/include
    ${GLFW_DIR}/include
    ${Python3_INCLUDE_DIRS}
)

target_link_directories(percept PRIVATE ${GLFW_DIR}/lib)

# Libraries
target_link_libraries(percept PRIVATE
    glfw3
    opengl32
    user32 
    gdi32
    shell32
    pybind11::module
)