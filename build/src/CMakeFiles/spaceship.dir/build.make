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
CMAKE_SOURCE_DIR = /home/riccardo/Project/gameDev/spaceship

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/riccardo/Project/gameDev/spaceship/build

# Include any dependencies generated for this target.
include src/CMakeFiles/spaceship.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/spaceship.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/spaceship.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/spaceship.dir/flags.make

src/CMakeFiles/spaceship.dir/main.cpp.o: src/CMakeFiles/spaceship.dir/flags.make
src/CMakeFiles/spaceship.dir/main.cpp.o: ../src/main.cpp
src/CMakeFiles/spaceship.dir/main.cpp.o: src/CMakeFiles/spaceship.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/riccardo/Project/gameDev/spaceship/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/spaceship.dir/main.cpp.o"
	cd /home/riccardo/Project/gameDev/spaceship/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/spaceship.dir/main.cpp.o -MF CMakeFiles/spaceship.dir/main.cpp.o.d -o CMakeFiles/spaceship.dir/main.cpp.o -c /home/riccardo/Project/gameDev/spaceship/src/main.cpp

src/CMakeFiles/spaceship.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spaceship.dir/main.cpp.i"
	cd /home/riccardo/Project/gameDev/spaceship/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/riccardo/Project/gameDev/spaceship/src/main.cpp > CMakeFiles/spaceship.dir/main.cpp.i

src/CMakeFiles/spaceship.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spaceship.dir/main.cpp.s"
	cd /home/riccardo/Project/gameDev/spaceship/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/riccardo/Project/gameDev/spaceship/src/main.cpp -o CMakeFiles/spaceship.dir/main.cpp.s

# Object files for target spaceship
spaceship_OBJECTS = \
"CMakeFiles/spaceship.dir/main.cpp.o"

# External object files for target spaceship
spaceship_EXTERNAL_OBJECTS =

../bin/Debug/spaceship: src/CMakeFiles/spaceship.dir/main.cpp.o
../bin/Debug/spaceship: src/CMakeFiles/spaceship.dir/build.make
../bin/Debug/spaceship: /usr/lib/x86_64-linux-gnu/libSDL2main.a
../bin/Debug/spaceship: /usr/lib/x86_64-linux-gnu/libSDL2.so
../bin/Debug/spaceship: src/CMakeFiles/spaceship.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/riccardo/Project/gameDev/spaceship/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/Debug/spaceship"
	cd /home/riccardo/Project/gameDev/spaceship/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spaceship.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/spaceship.dir/build: ../bin/Debug/spaceship
.PHONY : src/CMakeFiles/spaceship.dir/build

src/CMakeFiles/spaceship.dir/clean:
	cd /home/riccardo/Project/gameDev/spaceship/build/src && $(CMAKE_COMMAND) -P CMakeFiles/spaceship.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/spaceship.dir/clean

src/CMakeFiles/spaceship.dir/depend:
	cd /home/riccardo/Project/gameDev/spaceship/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/riccardo/Project/gameDev/spaceship /home/riccardo/Project/gameDev/spaceship/src /home/riccardo/Project/gameDev/spaceship/build /home/riccardo/Project/gameDev/spaceship/build/src /home/riccardo/Project/gameDev/spaceship/build/src/CMakeFiles/spaceship.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/spaceship.dir/depend

