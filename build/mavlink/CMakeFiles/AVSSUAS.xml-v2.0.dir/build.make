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
CMAKE_SOURCE_DIR = /home/hxj/px4_to_perception/px4_to_perception/src/mavlink

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hxj/px4_to_perception/px4_to_perception/build/mavlink

# Utility rule file for AVSSUAS.xml-v2.0.

# Include the progress variables for this target.
include CMakeFiles/AVSSUAS.xml-v2.0.dir/progress.make

CMakeFiles/AVSSUAS.xml-v2.0: AVSSUAS-v2.0-cxx-stamp


AVSSUAS-v2.0-cxx-stamp: /home/hxj/px4_to_perception/px4_to_perception/src/mavlink/message_definitions/v1.0/AVSSUAS.xml
AVSSUAS-v2.0-cxx-stamp: /home/hxj/px4_to_perception/px4_to_perception/src/mavlink/message_definitions/v1.0/common.xml
AVSSUAS-v2.0-cxx-stamp: /home/hxj/px4_to_perception/px4_to_perception/src/mavlink/pymavlink/tools/mavgen.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hxj/px4_to_perception/px4_to_perception/build/mavlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating AVSSUAS-v2.0-cxx-stamp"
	/usr/bin/env PYTHONPATH="/home/hxj/px4_to_perception/px4_to_perception/src/mavlink:/opt/ros/noetic/lib/python3/dist-packages" /usr/bin/python3.8 /home/hxj/px4_to_perception/px4_to_perception/src/mavlink/pymavlink/tools/mavgen.py --lang=C++11 --wire-protocol=2.0 --output=include/v2.0 /home/hxj/px4_to_perception/px4_to_perception/src/mavlink/message_definitions/v1.0/AVSSUAS.xml
	touch AVSSUAS-v2.0-cxx-stamp

AVSSUAS.xml-v2.0: CMakeFiles/AVSSUAS.xml-v2.0
AVSSUAS.xml-v2.0: AVSSUAS-v2.0-cxx-stamp
AVSSUAS.xml-v2.0: CMakeFiles/AVSSUAS.xml-v2.0.dir/build.make

.PHONY : AVSSUAS.xml-v2.0

# Rule to build all files generated by this target.
CMakeFiles/AVSSUAS.xml-v2.0.dir/build: AVSSUAS.xml-v2.0

.PHONY : CMakeFiles/AVSSUAS.xml-v2.0.dir/build

CMakeFiles/AVSSUAS.xml-v2.0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AVSSUAS.xml-v2.0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AVSSUAS.xml-v2.0.dir/clean

CMakeFiles/AVSSUAS.xml-v2.0.dir/depend:
	cd /home/hxj/px4_to_perception/px4_to_perception/build/mavlink && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hxj/px4_to_perception/px4_to_perception/src/mavlink /home/hxj/px4_to_perception/px4_to_perception/src/mavlink /home/hxj/px4_to_perception/px4_to_perception/build/mavlink /home/hxj/px4_to_perception/px4_to_perception/build/mavlink /home/hxj/px4_to_perception/px4_to_perception/build/mavlink/CMakeFiles/AVSSUAS.xml-v2.0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AVSSUAS.xml-v2.0.dir/depend

