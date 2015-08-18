project("MAVLink 2.0" CXX)
cmake_minimum_required(VERSION 3.1)
set(VERSION 0.1-dev)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(CheckIncludeFileCXX)
if(MSVC)
  check_include_file_cxx(initializer_list HAS_CXX11)
else()
  check_include_file_cxx(initializer_list HAS_CXX11 "-std=gnu++0x")
endif()
if(NOT HAS_CXX11)
  message(SEND_ERROR "Requires a C++11 compiler and standard library.")
endif()

set(CMAKE_CXX_STANDARD 11)

# Set installation paths; these can be overridden in the cache.
set(EXEC_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}"
  CACHE PATH "Base installation path for executables."
)
set(BIN_INSTALL_DIR "${EXEC_INSTALL_PREFIX}/bin"
  CACHE PATH "Installation directory for binaries (default: prefix/bin)."
)
set(LIB_INSTALL_DIR "${EXEC_INSTALL_PREFIX}/lib"
  CACHE PATH "Installation directory for libraries (default: prefix/lib)."
)
set(INCLUDE_INSTALL_DIR "${EXEC_INSTALL_PREFIX}/include"
  CACHE PATH "Installation directory for header files (default: prefix/include)."
)



INCLUDE(FindPackageHandleStandardArgs)

############### Library finding #################
# Performs the search and sets the variables    #

find_package(CapnProto REQUIRED)
include_directories(${CAPNP_INCLUDE_DIRS})
add_definitions(${CAPNP_DEFINITIONS})

capnp_generate_cpp(CAPNP_SRCS CAPNP_HDRS mavlink.capnp)

# Test executable
add_executable (mavlink_test test.cpp ${CAPNP_SRCS} ${CAPNP_HDRS})

# Link the executable to Capnp
target_link_libraries (mavlink_test ${CAPNP_LIBRARIES})