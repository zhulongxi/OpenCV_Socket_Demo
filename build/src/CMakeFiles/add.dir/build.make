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
CMAKE_SOURCE_DIR = /home/zlx/zlx/c++code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zlx/zlx/c++code/build

# Include any dependencies generated for this target.
include src/CMakeFiles/add.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/add.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/add.dir/flags.make

src/CMakeFiles/add.dir/ServerSocket.cpp.o: src/CMakeFiles/add.dir/flags.make
src/CMakeFiles/add.dir/ServerSocket.cpp.o: ../src/ServerSocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zlx/zlx/c++code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/add.dir/ServerSocket.cpp.o"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add.dir/ServerSocket.cpp.o -c /home/zlx/zlx/c++code/src/ServerSocket.cpp

src/CMakeFiles/add.dir/ServerSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add.dir/ServerSocket.cpp.i"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zlx/zlx/c++code/src/ServerSocket.cpp > CMakeFiles/add.dir/ServerSocket.cpp.i

src/CMakeFiles/add.dir/ServerSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add.dir/ServerSocket.cpp.s"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zlx/zlx/c++code/src/ServerSocket.cpp -o CMakeFiles/add.dir/ServerSocket.cpp.s

src/CMakeFiles/add.dir/YOLO.cpp.o: src/CMakeFiles/add.dir/flags.make
src/CMakeFiles/add.dir/YOLO.cpp.o: ../src/YOLO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zlx/zlx/c++code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/add.dir/YOLO.cpp.o"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add.dir/YOLO.cpp.o -c /home/zlx/zlx/c++code/src/YOLO.cpp

src/CMakeFiles/add.dir/YOLO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add.dir/YOLO.cpp.i"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zlx/zlx/c++code/src/YOLO.cpp > CMakeFiles/add.dir/YOLO.cpp.i

src/CMakeFiles/add.dir/YOLO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add.dir/YOLO.cpp.s"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zlx/zlx/c++code/src/YOLO.cpp -o CMakeFiles/add.dir/YOLO.cpp.s

src/CMakeFiles/add.dir/add.cpp.o: src/CMakeFiles/add.dir/flags.make
src/CMakeFiles/add.dir/add.cpp.o: ../src/add.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zlx/zlx/c++code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/add.dir/add.cpp.o"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add.dir/add.cpp.o -c /home/zlx/zlx/c++code/src/add.cpp

src/CMakeFiles/add.dir/add.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add.dir/add.cpp.i"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zlx/zlx/c++code/src/add.cpp > CMakeFiles/add.dir/add.cpp.i

src/CMakeFiles/add.dir/add.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add.dir/add.cpp.s"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zlx/zlx/c++code/src/add.cpp -o CMakeFiles/add.dir/add.cpp.s

# Object files for target add
add_OBJECTS = \
"CMakeFiles/add.dir/ServerSocket.cpp.o" \
"CMakeFiles/add.dir/YOLO.cpp.o" \
"CMakeFiles/add.dir/add.cpp.o"

# External object files for target add
add_EXTERNAL_OBJECTS =

lib/libadd.a: src/CMakeFiles/add.dir/ServerSocket.cpp.o
lib/libadd.a: src/CMakeFiles/add.dir/YOLO.cpp.o
lib/libadd.a: src/CMakeFiles/add.dir/add.cpp.o
lib/libadd.a: src/CMakeFiles/add.dir/build.make
lib/libadd.a: src/CMakeFiles/add.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zlx/zlx/c++code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../lib/libadd.a"
	cd /home/zlx/zlx/c++code/build/src && $(CMAKE_COMMAND) -P CMakeFiles/add.dir/cmake_clean_target.cmake
	cd /home/zlx/zlx/c++code/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/add.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/add.dir/build: lib/libadd.a

.PHONY : src/CMakeFiles/add.dir/build

src/CMakeFiles/add.dir/clean:
	cd /home/zlx/zlx/c++code/build/src && $(CMAKE_COMMAND) -P CMakeFiles/add.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/add.dir/clean

src/CMakeFiles/add.dir/depend:
	cd /home/zlx/zlx/c++code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zlx/zlx/c++code /home/zlx/zlx/c++code/src /home/zlx/zlx/c++code/build /home/zlx/zlx/c++code/build/src /home/zlx/zlx/c++code/build/src/CMakeFiles/add.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/add.dir/depend
