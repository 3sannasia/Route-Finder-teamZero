# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/cs225/teamZero/base

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/cs225/teamZero/base/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/lodepng.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/CMakeFiles/lodepng.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/lodepng.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/lodepng.dir/flags.make

lib/CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o: lib/CMakeFiles/lodepng.dir/flags.make
lib/CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o: ../lib/lodepng/lodepng.cpp
lib/CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o: lib/CMakeFiles/lodepng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cs225/teamZero/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o"
	cd /workspaces/cs225/teamZero/base/build/lib && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o -MF CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o.d -o CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o -c /workspaces/cs225/teamZero/base/lib/lodepng/lodepng.cpp

lib/CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.i"
	cd /workspaces/cs225/teamZero/base/build/lib && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cs225/teamZero/base/lib/lodepng/lodepng.cpp > CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.i

lib/CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.s"
	cd /workspaces/cs225/teamZero/base/build/lib && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cs225/teamZero/base/lib/lodepng/lodepng.cpp -o CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.s

# Object files for target lodepng
lodepng_OBJECTS = \
"CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o"

# External object files for target lodepng
lodepng_EXTERNAL_OBJECTS =

lib/liblodepng.a: lib/CMakeFiles/lodepng.dir/lodepng/lodepng.cpp.o
lib/liblodepng.a: lib/CMakeFiles/lodepng.dir/build.make
lib/liblodepng.a: lib/CMakeFiles/lodepng.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cs225/teamZero/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblodepng.a"
	cd /workspaces/cs225/teamZero/base/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/lodepng.dir/cmake_clean_target.cmake
	cd /workspaces/cs225/teamZero/base/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lodepng.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/lodepng.dir/build: lib/liblodepng.a
.PHONY : lib/CMakeFiles/lodepng.dir/build

lib/CMakeFiles/lodepng.dir/clean:
	cd /workspaces/cs225/teamZero/base/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/lodepng.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/lodepng.dir/clean

lib/CMakeFiles/lodepng.dir/depend:
	cd /workspaces/cs225/teamZero/base/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cs225/teamZero/base /workspaces/cs225/teamZero/base/lib /workspaces/cs225/teamZero/base/build /workspaces/cs225/teamZero/base/build/lib /workspaces/cs225/teamZero/base/build/lib/CMakeFiles/lodepng.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/lodepng.dir/depend

