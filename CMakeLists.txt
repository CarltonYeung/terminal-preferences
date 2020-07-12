cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# add the executable
add_executable(Tutorial tutorial.cpp)

