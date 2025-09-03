cmake_minimum_required(VERSION 3.20)
project(AMReX_Poisson LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(AMReX_EB ON CACHE BOOL "Enable Embedded Boundaries")

set(AMReX_MPI OFF CACHE BOOL "Disable MPI")
set(AMReX_SPACEDIM 2 CACHE STRING "Use 2D")

add_subdirectory(amrex)

add_executable(poisson src/Poisson.cpp)
target_link_libraries(poisson PRIVATE amrex)

target_compile_definitions(poisson PRIVATE
    AMREX_USE_EB=0
    AMREX_SPACEDIM=2
)
