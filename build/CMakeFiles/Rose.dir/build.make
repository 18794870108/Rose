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
CMAKE_SOURCE_DIR = /data/home/jasonyichen/Rose

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/home/jasonyichen/Rose/build

# Include any dependencies generated for this target.
include CMakeFiles/Rose.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Rose.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Rose.dir/flags.make

CMakeFiles/Rose.dir/Channel.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Channel.o: ../Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/home/jasonyichen/Rose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Rose.dir/Channel.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Channel.o -c /data/home/jasonyichen/Rose/Channel.cc

CMakeFiles/Rose.dir/Channel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Channel.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Channel.cc > CMakeFiles/Rose.dir/Channel.i

CMakeFiles/Rose.dir/Channel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Channel.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Channel.cc -o CMakeFiles/Rose.dir/Channel.s

CMakeFiles/Rose.dir/EventLoop.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/EventLoop.o: ../EventLoop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/home/jasonyichen/Rose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Rose.dir/EventLoop.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/EventLoop.o -c /data/home/jasonyichen/Rose/EventLoop.cc

CMakeFiles/Rose.dir/EventLoop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/EventLoop.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/EventLoop.cc > CMakeFiles/Rose.dir/EventLoop.i

CMakeFiles/Rose.dir/EventLoop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/EventLoop.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/EventLoop.cc -o CMakeFiles/Rose.dir/EventLoop.s

CMakeFiles/Rose.dir/InetAddress.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/InetAddress.o: ../InetAddress.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/home/jasonyichen/Rose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Rose.dir/InetAddress.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/InetAddress.o -c /data/home/jasonyichen/Rose/InetAddress.cc

CMakeFiles/Rose.dir/InetAddress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/InetAddress.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/InetAddress.cc > CMakeFiles/Rose.dir/InetAddress.i

CMakeFiles/Rose.dir/InetAddress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/InetAddress.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/InetAddress.cc -o CMakeFiles/Rose.dir/InetAddress.s

CMakeFiles/Rose.dir/Logger.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Logger.o: ../Logger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/home/jasonyichen/Rose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Rose.dir/Logger.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Logger.o -c /data/home/jasonyichen/Rose/Logger.cc

CMakeFiles/Rose.dir/Logger.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Logger.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Logger.cc > CMakeFiles/Rose.dir/Logger.i

CMakeFiles/Rose.dir/Logger.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Logger.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Logger.cc -o CMakeFiles/Rose.dir/Logger.s

CMakeFiles/Rose.dir/TcpServer.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/TcpServer.o: ../TcpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/home/jasonyichen/Rose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Rose.dir/TcpServer.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/TcpServer.o -c /data/home/jasonyichen/Rose/TcpServer.cc

CMakeFiles/Rose.dir/TcpServer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/TcpServer.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/TcpServer.cc > CMakeFiles/Rose.dir/TcpServer.i

CMakeFiles/Rose.dir/TcpServer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/TcpServer.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/TcpServer.cc -o CMakeFiles/Rose.dir/TcpServer.s

CMakeFiles/Rose.dir/Timestamp.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Timestamp.o: ../Timestamp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/home/jasonyichen/Rose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Rose.dir/Timestamp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Timestamp.o -c /data/home/jasonyichen/Rose/Timestamp.cc

CMakeFiles/Rose.dir/Timestamp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Timestamp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Timestamp.cc > CMakeFiles/Rose.dir/Timestamp.i

CMakeFiles/Rose.dir/Timestamp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Timestamp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Timestamp.cc -o CMakeFiles/Rose.dir/Timestamp.s

# Object files for target Rose
Rose_OBJECTS = \
"CMakeFiles/Rose.dir/Channel.o" \
"CMakeFiles/Rose.dir/EventLoop.o" \
"CMakeFiles/Rose.dir/InetAddress.o" \
"CMakeFiles/Rose.dir/Logger.o" \
"CMakeFiles/Rose.dir/TcpServer.o" \
"CMakeFiles/Rose.dir/Timestamp.o"

# External object files for target Rose
Rose_EXTERNAL_OBJECTS =

../lib/libRose.so: CMakeFiles/Rose.dir/Channel.o
../lib/libRose.so: CMakeFiles/Rose.dir/EventLoop.o
../lib/libRose.so: CMakeFiles/Rose.dir/InetAddress.o
../lib/libRose.so: CMakeFiles/Rose.dir/Logger.o
../lib/libRose.so: CMakeFiles/Rose.dir/TcpServer.o
../lib/libRose.so: CMakeFiles/Rose.dir/Timestamp.o
../lib/libRose.so: CMakeFiles/Rose.dir/build.make
../lib/libRose.so: CMakeFiles/Rose.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/home/jasonyichen/Rose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library ../lib/libRose.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Rose.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Rose.dir/build: ../lib/libRose.so

.PHONY : CMakeFiles/Rose.dir/build

CMakeFiles/Rose.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Rose.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Rose.dir/clean

CMakeFiles/Rose.dir/depend:
	cd /data/home/jasonyichen/Rose/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/home/jasonyichen/Rose /data/home/jasonyichen/Rose /data/home/jasonyichen/Rose/build /data/home/jasonyichen/Rose/build /data/home/jasonyichen/Rose/build/CMakeFiles/Rose.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Rose.dir/depend

