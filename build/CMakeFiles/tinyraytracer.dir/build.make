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
CMAKE_SOURCE_DIR = /home/cqfrank/Graphics/tinyrenderer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cqfrank/Graphics/tinyrenderer/build

# Include any dependencies generated for this target.
include CMakeFiles/tinyraytracer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tinyraytracer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tinyraytracer.dir/flags.make

CMakeFiles/tinyraytracer.dir/geometry.cpp.o: CMakeFiles/tinyraytracer.dir/flags.make
CMakeFiles/tinyraytracer.dir/geometry.cpp.o: ../geometry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cqfrank/Graphics/tinyrenderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tinyraytracer.dir/geometry.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tinyraytracer.dir/geometry.cpp.o -c /home/cqfrank/Graphics/tinyrenderer/geometry.cpp

CMakeFiles/tinyraytracer.dir/geometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyraytracer.dir/geometry.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cqfrank/Graphics/tinyrenderer/geometry.cpp > CMakeFiles/tinyraytracer.dir/geometry.cpp.i

CMakeFiles/tinyraytracer.dir/geometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyraytracer.dir/geometry.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cqfrank/Graphics/tinyrenderer/geometry.cpp -o CMakeFiles/tinyraytracer.dir/geometry.cpp.s

CMakeFiles/tinyraytracer.dir/main.cpp.o: CMakeFiles/tinyraytracer.dir/flags.make
CMakeFiles/tinyraytracer.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cqfrank/Graphics/tinyrenderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tinyraytracer.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tinyraytracer.dir/main.cpp.o -c /home/cqfrank/Graphics/tinyrenderer/main.cpp

CMakeFiles/tinyraytracer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyraytracer.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cqfrank/Graphics/tinyrenderer/main.cpp > CMakeFiles/tinyraytracer.dir/main.cpp.i

CMakeFiles/tinyraytracer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyraytracer.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cqfrank/Graphics/tinyrenderer/main.cpp -o CMakeFiles/tinyraytracer.dir/main.cpp.s

CMakeFiles/tinyraytracer.dir/model.cpp.o: CMakeFiles/tinyraytracer.dir/flags.make
CMakeFiles/tinyraytracer.dir/model.cpp.o: ../model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cqfrank/Graphics/tinyrenderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tinyraytracer.dir/model.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tinyraytracer.dir/model.cpp.o -c /home/cqfrank/Graphics/tinyrenderer/model.cpp

CMakeFiles/tinyraytracer.dir/model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyraytracer.dir/model.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cqfrank/Graphics/tinyrenderer/model.cpp > CMakeFiles/tinyraytracer.dir/model.cpp.i

CMakeFiles/tinyraytracer.dir/model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyraytracer.dir/model.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cqfrank/Graphics/tinyrenderer/model.cpp -o CMakeFiles/tinyraytracer.dir/model.cpp.s

CMakeFiles/tinyraytracer.dir/our_gl.cpp.o: CMakeFiles/tinyraytracer.dir/flags.make
CMakeFiles/tinyraytracer.dir/our_gl.cpp.o: ../our_gl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cqfrank/Graphics/tinyrenderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tinyraytracer.dir/our_gl.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tinyraytracer.dir/our_gl.cpp.o -c /home/cqfrank/Graphics/tinyrenderer/our_gl.cpp

CMakeFiles/tinyraytracer.dir/our_gl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyraytracer.dir/our_gl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cqfrank/Graphics/tinyrenderer/our_gl.cpp > CMakeFiles/tinyraytracer.dir/our_gl.cpp.i

CMakeFiles/tinyraytracer.dir/our_gl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyraytracer.dir/our_gl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cqfrank/Graphics/tinyrenderer/our_gl.cpp -o CMakeFiles/tinyraytracer.dir/our_gl.cpp.s

CMakeFiles/tinyraytracer.dir/tgaimage.cpp.o: CMakeFiles/tinyraytracer.dir/flags.make
CMakeFiles/tinyraytracer.dir/tgaimage.cpp.o: ../tgaimage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cqfrank/Graphics/tinyrenderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tinyraytracer.dir/tgaimage.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tinyraytracer.dir/tgaimage.cpp.o -c /home/cqfrank/Graphics/tinyrenderer/tgaimage.cpp

CMakeFiles/tinyraytracer.dir/tgaimage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tinyraytracer.dir/tgaimage.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cqfrank/Graphics/tinyrenderer/tgaimage.cpp > CMakeFiles/tinyraytracer.dir/tgaimage.cpp.i

CMakeFiles/tinyraytracer.dir/tgaimage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tinyraytracer.dir/tgaimage.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cqfrank/Graphics/tinyrenderer/tgaimage.cpp -o CMakeFiles/tinyraytracer.dir/tgaimage.cpp.s

# Object files for target tinyraytracer
tinyraytracer_OBJECTS = \
"CMakeFiles/tinyraytracer.dir/geometry.cpp.o" \
"CMakeFiles/tinyraytracer.dir/main.cpp.o" \
"CMakeFiles/tinyraytracer.dir/model.cpp.o" \
"CMakeFiles/tinyraytracer.dir/our_gl.cpp.o" \
"CMakeFiles/tinyraytracer.dir/tgaimage.cpp.o"

# External object files for target tinyraytracer
tinyraytracer_EXTERNAL_OBJECTS =

tinyraytracer: CMakeFiles/tinyraytracer.dir/geometry.cpp.o
tinyraytracer: CMakeFiles/tinyraytracer.dir/main.cpp.o
tinyraytracer: CMakeFiles/tinyraytracer.dir/model.cpp.o
tinyraytracer: CMakeFiles/tinyraytracer.dir/our_gl.cpp.o
tinyraytracer: CMakeFiles/tinyraytracer.dir/tgaimage.cpp.o
tinyraytracer: CMakeFiles/tinyraytracer.dir/build.make
tinyraytracer: CMakeFiles/tinyraytracer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cqfrank/Graphics/tinyrenderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable tinyraytracer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tinyraytracer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tinyraytracer.dir/build: tinyraytracer

.PHONY : CMakeFiles/tinyraytracer.dir/build

CMakeFiles/tinyraytracer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tinyraytracer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tinyraytracer.dir/clean

CMakeFiles/tinyraytracer.dir/depend:
	cd /home/cqfrank/Graphics/tinyrenderer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cqfrank/Graphics/tinyrenderer /home/cqfrank/Graphics/tinyrenderer /home/cqfrank/Graphics/tinyrenderer/build /home/cqfrank/Graphics/tinyrenderer/build /home/cqfrank/Graphics/tinyrenderer/build/CMakeFiles/tinyraytracer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tinyraytracer.dir/depend

