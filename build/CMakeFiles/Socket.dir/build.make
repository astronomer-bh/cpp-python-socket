# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/parallels/workspace/socket/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/parallels/workspace/socket/build

# Include any dependencies generated for this target.
include CMakeFiles/Socket.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Socket.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Socket.dir/flags.make

CMakeFiles/Socket.dir/socket_test.cpp.o: CMakeFiles/Socket.dir/flags.make
CMakeFiles/Socket.dir/socket_test.cpp.o: /home/parallels/workspace/socket/src/socket_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/parallels/workspace/socket/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Socket.dir/socket_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Socket.dir/socket_test.cpp.o -c /home/parallels/workspace/socket/src/socket_test.cpp

CMakeFiles/Socket.dir/socket_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Socket.dir/socket_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/parallels/workspace/socket/src/socket_test.cpp > CMakeFiles/Socket.dir/socket_test.cpp.i

CMakeFiles/Socket.dir/socket_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Socket.dir/socket_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/parallels/workspace/socket/src/socket_test.cpp -o CMakeFiles/Socket.dir/socket_test.cpp.s

CMakeFiles/Socket.dir/socket_test.cpp.o.requires:
.PHONY : CMakeFiles/Socket.dir/socket_test.cpp.o.requires

CMakeFiles/Socket.dir/socket_test.cpp.o.provides: CMakeFiles/Socket.dir/socket_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/Socket.dir/build.make CMakeFiles/Socket.dir/socket_test.cpp.o.provides.build
.PHONY : CMakeFiles/Socket.dir/socket_test.cpp.o.provides

CMakeFiles/Socket.dir/socket_test.cpp.o.provides.build: CMakeFiles/Socket.dir/socket_test.cpp.o

CMakeFiles/Socket.dir/mqpif.cpp.o: CMakeFiles/Socket.dir/flags.make
CMakeFiles/Socket.dir/mqpif.cpp.o: /home/parallels/workspace/socket/src/mqpif.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/parallels/workspace/socket/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Socket.dir/mqpif.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Socket.dir/mqpif.cpp.o -c /home/parallels/workspace/socket/src/mqpif.cpp

CMakeFiles/Socket.dir/mqpif.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Socket.dir/mqpif.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/parallels/workspace/socket/src/mqpif.cpp > CMakeFiles/Socket.dir/mqpif.cpp.i

CMakeFiles/Socket.dir/mqpif.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Socket.dir/mqpif.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/parallels/workspace/socket/src/mqpif.cpp -o CMakeFiles/Socket.dir/mqpif.cpp.s

CMakeFiles/Socket.dir/mqpif.cpp.o.requires:
.PHONY : CMakeFiles/Socket.dir/mqpif.cpp.o.requires

CMakeFiles/Socket.dir/mqpif.cpp.o.provides: CMakeFiles/Socket.dir/mqpif.cpp.o.requires
	$(MAKE) -f CMakeFiles/Socket.dir/build.make CMakeFiles/Socket.dir/mqpif.cpp.o.provides.build
.PHONY : CMakeFiles/Socket.dir/mqpif.cpp.o.provides

CMakeFiles/Socket.dir/mqpif.cpp.o.provides.build: CMakeFiles/Socket.dir/mqpif.cpp.o

# Object files for target Socket
Socket_OBJECTS = \
"CMakeFiles/Socket.dir/socket_test.cpp.o" \
"CMakeFiles/Socket.dir/mqpif.cpp.o"

# External object files for target Socket
Socket_EXTERNAL_OBJECTS =

Socket: CMakeFiles/Socket.dir/socket_test.cpp.o
Socket: CMakeFiles/Socket.dir/mqpif.cpp.o
Socket: CMakeFiles/Socket.dir/build.make
Socket: CMakeFiles/Socket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Socket"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Socket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Socket.dir/build: Socket
.PHONY : CMakeFiles/Socket.dir/build

CMakeFiles/Socket.dir/requires: CMakeFiles/Socket.dir/socket_test.cpp.o.requires
CMakeFiles/Socket.dir/requires: CMakeFiles/Socket.dir/mqpif.cpp.o.requires
.PHONY : CMakeFiles/Socket.dir/requires

CMakeFiles/Socket.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Socket.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Socket.dir/clean

CMakeFiles/Socket.dir/depend:
	cd /home/parallels/workspace/socket/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/parallels/workspace/socket/src /home/parallels/workspace/socket/src /home/parallels/workspace/socket/build /home/parallels/workspace/socket/build /home/parallels/workspace/socket/build/CMakeFiles/Socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Socket.dir/depend
