# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hxj/px4_to_perception/px4_to_perception/src/mavros/mavros

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hxj/px4_to_perception/px4_to_perception/build/mavros

# Include any dependencies generated for this target.
include CMakeFiles/libmavros-sensor-orientation-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libmavros-sensor-orientation-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libmavros-sensor-orientation-test.dir/flags.make

CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.o: CMakeFiles/libmavros-sensor-orientation-test.dir/flags.make
CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.o: /home/hxj/px4_to_perception/px4_to_perception/src/mavros/mavros/test/test_sensor_orientation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxj/px4_to_perception/px4_to_perception/build/mavros/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.o -c /home/hxj/px4_to_perception/px4_to_perception/src/mavros/mavros/test/test_sensor_orientation.cpp

CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxj/px4_to_perception/px4_to_perception/src/mavros/mavros/test/test_sensor_orientation.cpp > CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.i

CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxj/px4_to_perception/px4_to_perception/src/mavros/mavros/test/test_sensor_orientation.cpp -o CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.s

# Object files for target libmavros-sensor-orientation-test
libmavros__sensor__orientation__test_OBJECTS = \
"CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.o"

# External object files for target libmavros-sensor-orientation-test
libmavros__sensor__orientation__test_EXTERNAL_OBJECTS =

/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: CMakeFiles/libmavros-sensor-orientation-test.dir/test/test_sensor_orientation.cpp.o
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: CMakeFiles/libmavros-sensor-orientation-test.dir/build.make
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: gtest/lib/libgtest.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/libmavros.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libdiagnostic_updater.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libeigen_conversions.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/liborocos-kdl.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /home/hxj/px4_to_perception/px4_to_perception/devel/.private/libmavconn/lib/libmavconn.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libclass_loader.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libdl.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libroslib.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/librospack.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/librosconsole_bridge.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libtf2_ros.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libactionlib.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libmessage_filters.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libroscpp.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/librosconsole.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libtf2.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/librostime.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /opt/ros/noetic/lib/libcpp_common.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: /usr/lib/x86_64-linux-gnu/libGeographic.so
/home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test: CMakeFiles/libmavros-sensor-orientation-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hxj/px4_to_perception/px4_to_perception/build/mavros/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libmavros-sensor-orientation-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libmavros-sensor-orientation-test.dir/build: /home/hxj/px4_to_perception/px4_to_perception/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test

.PHONY : CMakeFiles/libmavros-sensor-orientation-test.dir/build

CMakeFiles/libmavros-sensor-orientation-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libmavros-sensor-orientation-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libmavros-sensor-orientation-test.dir/clean

CMakeFiles/libmavros-sensor-orientation-test.dir/depend:
	cd /home/hxj/px4_to_perception/px4_to_perception/build/mavros && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hxj/px4_to_perception/px4_to_perception/src/mavros/mavros /home/hxj/px4_to_perception/px4_to_perception/src/mavros/mavros /home/hxj/px4_to_perception/px4_to_perception/build/mavros /home/hxj/px4_to_perception/px4_to_perception/build/mavros /home/hxj/px4_to_perception/px4_to_perception/build/mavros/CMakeFiles/libmavros-sensor-orientation-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libmavros-sensor-orientation-test.dir/depend

