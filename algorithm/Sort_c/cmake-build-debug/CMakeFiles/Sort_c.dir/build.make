# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rodin/Documents/RodinYTY/algorithm/Sort_c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Sort_c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Sort_c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Sort_c.dir/flags.make

CMakeFiles/Sort_c.dir/main.cpp.o: CMakeFiles/Sort_c.dir/flags.make
CMakeFiles/Sort_c.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rodin/Documents/RodinYTY/algorithm/Sort_c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Sort_c.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Sort_c.dir/main.cpp.o -c /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/main.cpp

CMakeFiles/Sort_c.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sort_c.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/main.cpp > CMakeFiles/Sort_c.dir/main.cpp.i

CMakeFiles/Sort_c.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sort_c.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/main.cpp -o CMakeFiles/Sort_c.dir/main.cpp.s

CMakeFiles/Sort_c.dir/source/Sort.cpp.o: CMakeFiles/Sort_c.dir/flags.make
CMakeFiles/Sort_c.dir/source/Sort.cpp.o: ../source/Sort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rodin/Documents/RodinYTY/algorithm/Sort_c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Sort_c.dir/source/Sort.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Sort_c.dir/source/Sort.cpp.o -c /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/source/Sort.cpp

CMakeFiles/Sort_c.dir/source/Sort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sort_c.dir/source/Sort.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/source/Sort.cpp > CMakeFiles/Sort_c.dir/source/Sort.cpp.i

CMakeFiles/Sort_c.dir/source/Sort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sort_c.dir/source/Sort.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/source/Sort.cpp -o CMakeFiles/Sort_c.dir/source/Sort.cpp.s

# Object files for target Sort_c
Sort_c_OBJECTS = \
"CMakeFiles/Sort_c.dir/main.cpp.o" \
"CMakeFiles/Sort_c.dir/source/Sort.cpp.o"

# External object files for target Sort_c
Sort_c_EXTERNAL_OBJECTS =

Sort_c: CMakeFiles/Sort_c.dir/main.cpp.o
Sort_c: CMakeFiles/Sort_c.dir/source/Sort.cpp.o
Sort_c: CMakeFiles/Sort_c.dir/build.make
Sort_c: CMakeFiles/Sort_c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rodin/Documents/RodinYTY/algorithm/Sort_c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Sort_c"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Sort_c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Sort_c.dir/build: Sort_c

.PHONY : CMakeFiles/Sort_c.dir/build

CMakeFiles/Sort_c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Sort_c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Sort_c.dir/clean

CMakeFiles/Sort_c.dir/depend:
	cd /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rodin/Documents/RodinYTY/algorithm/Sort_c /Users/rodin/Documents/RodinYTY/algorithm/Sort_c /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/cmake-build-debug /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/cmake-build-debug /Users/rodin/Documents/RodinYTY/algorithm/Sort_c/cmake-build-debug/CMakeFiles/Sort_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Sort_c.dir/depend

