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
CMAKE_SOURCE_DIR = /home/lksmaxx/Documents/dev/Metaballs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lksmaxx/Documents/dev/Metaballs/build

# Include any dependencies generated for this target.
include CMakeFiles/Metaballs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Metaballs.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Metaballs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Metaballs.dir/flags.make

CMakeFiles/Metaballs.dir/main.cpp.o: CMakeFiles/Metaballs.dir/flags.make
CMakeFiles/Metaballs.dir/main.cpp.o: ../main.cpp
CMakeFiles/Metaballs.dir/main.cpp.o: CMakeFiles/Metaballs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lksmaxx/Documents/dev/Metaballs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Metaballs.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Metaballs.dir/main.cpp.o -MF CMakeFiles/Metaballs.dir/main.cpp.o.d -o CMakeFiles/Metaballs.dir/main.cpp.o -c /home/lksmaxx/Documents/dev/Metaballs/main.cpp

CMakeFiles/Metaballs.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Metaballs.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lksmaxx/Documents/dev/Metaballs/main.cpp > CMakeFiles/Metaballs.dir/main.cpp.i

CMakeFiles/Metaballs.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Metaballs.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lksmaxx/Documents/dev/Metaballs/main.cpp -o CMakeFiles/Metaballs.dir/main.cpp.s

CMakeFiles/Metaballs.dir/src/application.cpp.o: CMakeFiles/Metaballs.dir/flags.make
CMakeFiles/Metaballs.dir/src/application.cpp.o: ../src/application.cpp
CMakeFiles/Metaballs.dir/src/application.cpp.o: CMakeFiles/Metaballs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lksmaxx/Documents/dev/Metaballs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Metaballs.dir/src/application.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Metaballs.dir/src/application.cpp.o -MF CMakeFiles/Metaballs.dir/src/application.cpp.o.d -o CMakeFiles/Metaballs.dir/src/application.cpp.o -c /home/lksmaxx/Documents/dev/Metaballs/src/application.cpp

CMakeFiles/Metaballs.dir/src/application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Metaballs.dir/src/application.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lksmaxx/Documents/dev/Metaballs/src/application.cpp > CMakeFiles/Metaballs.dir/src/application.cpp.i

CMakeFiles/Metaballs.dir/src/application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Metaballs.dir/src/application.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lksmaxx/Documents/dev/Metaballs/src/application.cpp -o CMakeFiles/Metaballs.dir/src/application.cpp.s

CMakeFiles/Metaballs.dir/src/glad.c.o: CMakeFiles/Metaballs.dir/flags.make
CMakeFiles/Metaballs.dir/src/glad.c.o: ../src/glad.c
CMakeFiles/Metaballs.dir/src/glad.c.o: CMakeFiles/Metaballs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lksmaxx/Documents/dev/Metaballs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Metaballs.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Metaballs.dir/src/glad.c.o -MF CMakeFiles/Metaballs.dir/src/glad.c.o.d -o CMakeFiles/Metaballs.dir/src/glad.c.o -c /home/lksmaxx/Documents/dev/Metaballs/src/glad.c

CMakeFiles/Metaballs.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Metaballs.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lksmaxx/Documents/dev/Metaballs/src/glad.c > CMakeFiles/Metaballs.dir/src/glad.c.i

CMakeFiles/Metaballs.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Metaballs.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lksmaxx/Documents/dev/Metaballs/src/glad.c -o CMakeFiles/Metaballs.dir/src/glad.c.s

CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o: CMakeFiles/Metaballs.dir/flags.make
CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o: ../src/gl_utils.cpp
CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o: CMakeFiles/Metaballs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lksmaxx/Documents/dev/Metaballs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o -MF CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o.d -o CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o -c /home/lksmaxx/Documents/dev/Metaballs/src/gl_utils.cpp

CMakeFiles/Metaballs.dir/src/gl_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Metaballs.dir/src/gl_utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lksmaxx/Documents/dev/Metaballs/src/gl_utils.cpp > CMakeFiles/Metaballs.dir/src/gl_utils.cpp.i

CMakeFiles/Metaballs.dir/src/gl_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Metaballs.dir/src/gl_utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lksmaxx/Documents/dev/Metaballs/src/gl_utils.cpp -o CMakeFiles/Metaballs.dir/src/gl_utils.cpp.s

CMakeFiles/Metaballs.dir/src/shader.cpp.o: CMakeFiles/Metaballs.dir/flags.make
CMakeFiles/Metaballs.dir/src/shader.cpp.o: ../src/shader.cpp
CMakeFiles/Metaballs.dir/src/shader.cpp.o: CMakeFiles/Metaballs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lksmaxx/Documents/dev/Metaballs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Metaballs.dir/src/shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Metaballs.dir/src/shader.cpp.o -MF CMakeFiles/Metaballs.dir/src/shader.cpp.o.d -o CMakeFiles/Metaballs.dir/src/shader.cpp.o -c /home/lksmaxx/Documents/dev/Metaballs/src/shader.cpp

CMakeFiles/Metaballs.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Metaballs.dir/src/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lksmaxx/Documents/dev/Metaballs/src/shader.cpp > CMakeFiles/Metaballs.dir/src/shader.cpp.i

CMakeFiles/Metaballs.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Metaballs.dir/src/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lksmaxx/Documents/dev/Metaballs/src/shader.cpp -o CMakeFiles/Metaballs.dir/src/shader.cpp.s

# Object files for target Metaballs
Metaballs_OBJECTS = \
"CMakeFiles/Metaballs.dir/main.cpp.o" \
"CMakeFiles/Metaballs.dir/src/application.cpp.o" \
"CMakeFiles/Metaballs.dir/src/glad.c.o" \
"CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o" \
"CMakeFiles/Metaballs.dir/src/shader.cpp.o"

# External object files for target Metaballs
Metaballs_EXTERNAL_OBJECTS =

Metaballs: CMakeFiles/Metaballs.dir/main.cpp.o
Metaballs: CMakeFiles/Metaballs.dir/src/application.cpp.o
Metaballs: CMakeFiles/Metaballs.dir/src/glad.c.o
Metaballs: CMakeFiles/Metaballs.dir/src/gl_utils.cpp.o
Metaballs: CMakeFiles/Metaballs.dir/src/shader.cpp.o
Metaballs: CMakeFiles/Metaballs.dir/build.make
Metaballs: vendor/glfw/src/libglfw3.a
Metaballs: /usr/lib/x86_64-linux-gnu/librt.a
Metaballs: /usr/lib/x86_64-linux-gnu/libm.so
Metaballs: CMakeFiles/Metaballs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lksmaxx/Documents/dev/Metaballs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Metaballs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Metaballs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Metaballs.dir/build: Metaballs
.PHONY : CMakeFiles/Metaballs.dir/build

CMakeFiles/Metaballs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Metaballs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Metaballs.dir/clean

CMakeFiles/Metaballs.dir/depend:
	cd /home/lksmaxx/Documents/dev/Metaballs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lksmaxx/Documents/dev/Metaballs /home/lksmaxx/Documents/dev/Metaballs /home/lksmaxx/Documents/dev/Metaballs/build /home/lksmaxx/Documents/dev/Metaballs/build /home/lksmaxx/Documents/dev/Metaballs/build/CMakeFiles/Metaballs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Metaballs.dir/depend

