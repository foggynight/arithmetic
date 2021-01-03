# Copyright (C) 2021 Robert Coffey

cmake_minimum_required(VERSION 3.16.0)
project(DRILL_PROJECT CXX)

include_directories(inc)

add_executable(drill
    src/main.cpp
    src/Drill.cpp
)
