cmake_minimum_required(VERSION 3.16)
project(tcp_server)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 COMPONENTS Core Network REQUIRED)

add_executable(arch_server main.cpp)
target_link_libraries(arch_server Qt6::Core Qt6::Network)
