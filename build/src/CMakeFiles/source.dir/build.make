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
include src/CMakeFiles/source.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/source.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/source.dir/flags.make

src/CMakeFiles/source.dir/ClientSocket.cpp.o: src/CMakeFiles/source.dir/flags.make
src/CMakeFiles/source.dir/ClientSocket.cpp.o: ../src/ClientSocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zlx/zlx/c++code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/source.dir/ClientSocket.cpp.o"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/source.dir/ClientSocket.cpp.o -c /home/zlx/zlx/c++code/src/ClientSocket.cpp

src/CMakeFiles/source.dir/ClientSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/source.dir/ClientSocket.cpp.i"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zlx/zlx/c++code/src/ClientSocket.cpp > CMakeFiles/source.dir/ClientSocket.cpp.i

src/CMakeFiles/source.dir/ClientSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/source.dir/ClientSocket.cpp.s"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zlx/zlx/c++code/src/ClientSocket.cpp -o CMakeFiles/source.dir/ClientSocket.cpp.s

src/CMakeFiles/source.dir/ServerSocket.cpp.o: src/CMakeFiles/source.dir/flags.make
src/CMakeFiles/source.dir/ServerSocket.cpp.o: ../src/ServerSocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zlx/zlx/c++code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/source.dir/ServerSocket.cpp.o"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/source.dir/ServerSocket.cpp.o -c /home/zlx/zlx/c++code/src/ServerSocket.cpp

src/CMakeFiles/source.dir/ServerSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/source.dir/ServerSocket.cpp.i"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zlx/zlx/c++code/src/ServerSocket.cpp > CMakeFiles/source.dir/ServerSocket.cpp.i

src/CMakeFiles/source.dir/ServerSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/source.dir/ServerSocket.cpp.s"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zlx/zlx/c++code/src/ServerSocket.cpp -o CMakeFiles/source.dir/ServerSocket.cpp.s

src/CMakeFiles/source.dir/YOLO.cpp.o: src/CMakeFiles/source.dir/flags.make
src/CMakeFiles/source.dir/YOLO.cpp.o: ../src/YOLO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zlx/zlx/c++code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/source.dir/YOLO.cpp.o"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/source.dir/YOLO.cpp.o -c /home/zlx/zlx/c++code/src/YOLO.cpp

src/CMakeFiles/source.dir/YOLO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/source.dir/YOLO.cpp.i"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zlx/zlx/c++code/src/YOLO.cpp > CMakeFiles/source.dir/YOLO.cpp.i

src/CMakeFiles/source.dir/YOLO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/source.dir/YOLO.cpp.s"
	cd /home/zlx/zlx/c++code/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zlx/zlx/c++code/src/YOLO.cpp -o CMakeFiles/source.dir/YOLO.cpp.s

# Object files for target source
source_OBJECTS = \
"CMakeFiles/source.dir/ClientSocket.cpp.o" \
"CMakeFiles/source.dir/ServerSocket.cpp.o" \
"CMakeFiles/source.dir/YOLO.cpp.o"

# External object files for target source
source_EXTERNAL_OBJECTS =

lib/libsource.a: src/CMakeFiles/source.dir/ClientSocket.cpp.o
lib/libsource.a: src/CMakeFiles/source.dir/ServerSocket.cpp.o
lib/libsource.a: src/CMakeFiles/source.dir/YOLO.cpp.o
lib/libsource.a: src/CMakeFiles/source.dir/build.make
lib/libsource.a: src/CMakeFiles/source.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zlx/zlx/c++code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../lib/libsource.a"
	cd /home/zlx/zlx/c++code/build/src && $(CMAKE_COMMAND) -P CMakeFiles/source.dir/cmake_clean_target.cmake
	cd /home/zlx/zlx/c++code/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/source.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/source.dir/build: lib/libsource.a

.PHONY : src/CMakeFiles/source.dir/build

src/CMakeFiles/source.dir/clean:
	cd /home/zlx/zlx/c++code/build/src && $(CMAKE_COMMAND) -P CMakeFiles/source.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/source.dir/clean

src/CMakeFiles/source.dir/depend:
	cd /home/zlx/zlx/c++code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zlx/zlx/c++code /home/zlx/zlx/c++code/src /home/zlx/zlx/c++code/build /home/zlx/zlx/c++code/build/src /home/zlx/zlx/c++code/build/src/CMakeFiles/source.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/source.dir/depend

