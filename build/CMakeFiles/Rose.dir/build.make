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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

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

CMakeFiles/Rose.dir/EPollPoller.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/EPollPoller.o: ../EPollPoller.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/EPollPoller.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/EPollPoller.o -c /data/home/jasonyichen/Rose/EPollPoller.cc

CMakeFiles/Rose.dir/EPollPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/EPollPoller.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/EPollPoller.cc > CMakeFiles/Rose.dir/EPollPoller.i

CMakeFiles/Rose.dir/EPollPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/EPollPoller.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/EPollPoller.cc -o CMakeFiles/Rose.dir/EPollPoller.s

CMakeFiles/Rose.dir/EPollPoller.o.requires:
.PHONY : CMakeFiles/Rose.dir/EPollPoller.o.requires

CMakeFiles/Rose.dir/EPollPoller.o.provides: CMakeFiles/Rose.dir/EPollPoller.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/EPollPoller.o.provides.build
.PHONY : CMakeFiles/Rose.dir/EPollPoller.o.provides

CMakeFiles/Rose.dir/EPollPoller.o.provides.build: CMakeFiles/Rose.dir/EPollPoller.o

CMakeFiles/Rose.dir/CurrentThread.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/CurrentThread.o: ../CurrentThread.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/CurrentThread.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/CurrentThread.o -c /data/home/jasonyichen/Rose/CurrentThread.cc

CMakeFiles/Rose.dir/CurrentThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/CurrentThread.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/CurrentThread.cc > CMakeFiles/Rose.dir/CurrentThread.i

CMakeFiles/Rose.dir/CurrentThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/CurrentThread.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/CurrentThread.cc -o CMakeFiles/Rose.dir/CurrentThread.s

CMakeFiles/Rose.dir/CurrentThread.o.requires:
.PHONY : CMakeFiles/Rose.dir/CurrentThread.o.requires

CMakeFiles/Rose.dir/CurrentThread.o.provides: CMakeFiles/Rose.dir/CurrentThread.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/CurrentThread.o.provides.build
.PHONY : CMakeFiles/Rose.dir/CurrentThread.o.provides

CMakeFiles/Rose.dir/CurrentThread.o.provides.build: CMakeFiles/Rose.dir/CurrentThread.o

CMakeFiles/Rose.dir/Logger.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Logger.o: ../Logger.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/Logger.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Logger.o -c /data/home/jasonyichen/Rose/Logger.cc

CMakeFiles/Rose.dir/Logger.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Logger.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Logger.cc > CMakeFiles/Rose.dir/Logger.i

CMakeFiles/Rose.dir/Logger.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Logger.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Logger.cc -o CMakeFiles/Rose.dir/Logger.s

CMakeFiles/Rose.dir/Logger.o.requires:
.PHONY : CMakeFiles/Rose.dir/Logger.o.requires

CMakeFiles/Rose.dir/Logger.o.provides: CMakeFiles/Rose.dir/Logger.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/Logger.o.provides.build
.PHONY : CMakeFiles/Rose.dir/Logger.o.provides

CMakeFiles/Rose.dir/Logger.o.provides.build: CMakeFiles/Rose.dir/Logger.o

CMakeFiles/Rose.dir/TcpConnection.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/TcpConnection.o: ../TcpConnection.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/TcpConnection.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/TcpConnection.o -c /data/home/jasonyichen/Rose/TcpConnection.cc

CMakeFiles/Rose.dir/TcpConnection.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/TcpConnection.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/TcpConnection.cc > CMakeFiles/Rose.dir/TcpConnection.i

CMakeFiles/Rose.dir/TcpConnection.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/TcpConnection.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/TcpConnection.cc -o CMakeFiles/Rose.dir/TcpConnection.s

CMakeFiles/Rose.dir/TcpConnection.o.requires:
.PHONY : CMakeFiles/Rose.dir/TcpConnection.o.requires

CMakeFiles/Rose.dir/TcpConnection.o.provides: CMakeFiles/Rose.dir/TcpConnection.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/TcpConnection.o.provides.build
.PHONY : CMakeFiles/Rose.dir/TcpConnection.o.provides

CMakeFiles/Rose.dir/TcpConnection.o.provides.build: CMakeFiles/Rose.dir/TcpConnection.o

CMakeFiles/Rose.dir/Buffer.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Buffer.o: ../Buffer.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/Buffer.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Buffer.o -c /data/home/jasonyichen/Rose/Buffer.cc

CMakeFiles/Rose.dir/Buffer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Buffer.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Buffer.cc > CMakeFiles/Rose.dir/Buffer.i

CMakeFiles/Rose.dir/Buffer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Buffer.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Buffer.cc -o CMakeFiles/Rose.dir/Buffer.s

CMakeFiles/Rose.dir/Buffer.o.requires:
.PHONY : CMakeFiles/Rose.dir/Buffer.o.requires

CMakeFiles/Rose.dir/Buffer.o.provides: CMakeFiles/Rose.dir/Buffer.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/Buffer.o.provides.build
.PHONY : CMakeFiles/Rose.dir/Buffer.o.provides

CMakeFiles/Rose.dir/Buffer.o.provides.build: CMakeFiles/Rose.dir/Buffer.o

CMakeFiles/Rose.dir/Thread.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Thread.o: ../Thread.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/Thread.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Thread.o -c /data/home/jasonyichen/Rose/Thread.cc

CMakeFiles/Rose.dir/Thread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Thread.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Thread.cc > CMakeFiles/Rose.dir/Thread.i

CMakeFiles/Rose.dir/Thread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Thread.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Thread.cc -o CMakeFiles/Rose.dir/Thread.s

CMakeFiles/Rose.dir/Thread.o.requires:
.PHONY : CMakeFiles/Rose.dir/Thread.o.requires

CMakeFiles/Rose.dir/Thread.o.provides: CMakeFiles/Rose.dir/Thread.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/Thread.o.provides.build
.PHONY : CMakeFiles/Rose.dir/Thread.o.provides

CMakeFiles/Rose.dir/Thread.o.provides.build: CMakeFiles/Rose.dir/Thread.o

CMakeFiles/Rose.dir/Poller.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Poller.o: ../Poller.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/Poller.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Poller.o -c /data/home/jasonyichen/Rose/Poller.cc

CMakeFiles/Rose.dir/Poller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Poller.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Poller.cc > CMakeFiles/Rose.dir/Poller.i

CMakeFiles/Rose.dir/Poller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Poller.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Poller.cc -o CMakeFiles/Rose.dir/Poller.s

CMakeFiles/Rose.dir/Poller.o.requires:
.PHONY : CMakeFiles/Rose.dir/Poller.o.requires

CMakeFiles/Rose.dir/Poller.o.provides: CMakeFiles/Rose.dir/Poller.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/Poller.o.provides.build
.PHONY : CMakeFiles/Rose.dir/Poller.o.provides

CMakeFiles/Rose.dir/Poller.o.provides.build: CMakeFiles/Rose.dir/Poller.o

CMakeFiles/Rose.dir/Timestamp.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Timestamp.o: ../Timestamp.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/Timestamp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Timestamp.o -c /data/home/jasonyichen/Rose/Timestamp.cc

CMakeFiles/Rose.dir/Timestamp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Timestamp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Timestamp.cc > CMakeFiles/Rose.dir/Timestamp.i

CMakeFiles/Rose.dir/Timestamp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Timestamp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Timestamp.cc -o CMakeFiles/Rose.dir/Timestamp.s

CMakeFiles/Rose.dir/Timestamp.o.requires:
.PHONY : CMakeFiles/Rose.dir/Timestamp.o.requires

CMakeFiles/Rose.dir/Timestamp.o.provides: CMakeFiles/Rose.dir/Timestamp.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/Timestamp.o.provides.build
.PHONY : CMakeFiles/Rose.dir/Timestamp.o.provides

CMakeFiles/Rose.dir/Timestamp.o.provides.build: CMakeFiles/Rose.dir/Timestamp.o

CMakeFiles/Rose.dir/Socket.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Socket.o: ../Socket.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/Socket.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Socket.o -c /data/home/jasonyichen/Rose/Socket.cc

CMakeFiles/Rose.dir/Socket.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Socket.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Socket.cc > CMakeFiles/Rose.dir/Socket.i

CMakeFiles/Rose.dir/Socket.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Socket.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Socket.cc -o CMakeFiles/Rose.dir/Socket.s

CMakeFiles/Rose.dir/Socket.o.requires:
.PHONY : CMakeFiles/Rose.dir/Socket.o.requires

CMakeFiles/Rose.dir/Socket.o.provides: CMakeFiles/Rose.dir/Socket.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/Socket.o.provides.build
.PHONY : CMakeFiles/Rose.dir/Socket.o.provides

CMakeFiles/Rose.dir/Socket.o.provides.build: CMakeFiles/Rose.dir/Socket.o

CMakeFiles/Rose.dir/Channel.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Channel.o: ../Channel.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/Channel.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Channel.o -c /data/home/jasonyichen/Rose/Channel.cc

CMakeFiles/Rose.dir/Channel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Channel.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Channel.cc > CMakeFiles/Rose.dir/Channel.i

CMakeFiles/Rose.dir/Channel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Channel.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Channel.cc -o CMakeFiles/Rose.dir/Channel.s

CMakeFiles/Rose.dir/Channel.o.requires:
.PHONY : CMakeFiles/Rose.dir/Channel.o.requires

CMakeFiles/Rose.dir/Channel.o.provides: CMakeFiles/Rose.dir/Channel.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/Channel.o.provides.build
.PHONY : CMakeFiles/Rose.dir/Channel.o.provides

CMakeFiles/Rose.dir/Channel.o.provides.build: CMakeFiles/Rose.dir/Channel.o

CMakeFiles/Rose.dir/EventLoopThread.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/EventLoopThread.o: ../EventLoopThread.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/EventLoopThread.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/EventLoopThread.o -c /data/home/jasonyichen/Rose/EventLoopThread.cc

CMakeFiles/Rose.dir/EventLoopThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/EventLoopThread.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/EventLoopThread.cc > CMakeFiles/Rose.dir/EventLoopThread.i

CMakeFiles/Rose.dir/EventLoopThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/EventLoopThread.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/EventLoopThread.cc -o CMakeFiles/Rose.dir/EventLoopThread.s

CMakeFiles/Rose.dir/EventLoopThread.o.requires:
.PHONY : CMakeFiles/Rose.dir/EventLoopThread.o.requires

CMakeFiles/Rose.dir/EventLoopThread.o.provides: CMakeFiles/Rose.dir/EventLoopThread.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/EventLoopThread.o.provides.build
.PHONY : CMakeFiles/Rose.dir/EventLoopThread.o.provides

CMakeFiles/Rose.dir/EventLoopThread.o.provides.build: CMakeFiles/Rose.dir/EventLoopThread.o

CMakeFiles/Rose.dir/DefaultPoller.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/DefaultPoller.o: ../DefaultPoller.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/DefaultPoller.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/DefaultPoller.o -c /data/home/jasonyichen/Rose/DefaultPoller.cc

CMakeFiles/Rose.dir/DefaultPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/DefaultPoller.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/DefaultPoller.cc > CMakeFiles/Rose.dir/DefaultPoller.i

CMakeFiles/Rose.dir/DefaultPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/DefaultPoller.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/DefaultPoller.cc -o CMakeFiles/Rose.dir/DefaultPoller.s

CMakeFiles/Rose.dir/DefaultPoller.o.requires:
.PHONY : CMakeFiles/Rose.dir/DefaultPoller.o.requires

CMakeFiles/Rose.dir/DefaultPoller.o.provides: CMakeFiles/Rose.dir/DefaultPoller.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/DefaultPoller.o.provides.build
.PHONY : CMakeFiles/Rose.dir/DefaultPoller.o.provides

CMakeFiles/Rose.dir/DefaultPoller.o.provides.build: CMakeFiles/Rose.dir/DefaultPoller.o

CMakeFiles/Rose.dir/EventLoopThreadPool.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/EventLoopThreadPool.o: ../EventLoopThreadPool.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/EventLoopThreadPool.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/EventLoopThreadPool.o -c /data/home/jasonyichen/Rose/EventLoopThreadPool.cc

CMakeFiles/Rose.dir/EventLoopThreadPool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/EventLoopThreadPool.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/EventLoopThreadPool.cc > CMakeFiles/Rose.dir/EventLoopThreadPool.i

CMakeFiles/Rose.dir/EventLoopThreadPool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/EventLoopThreadPool.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/EventLoopThreadPool.cc -o CMakeFiles/Rose.dir/EventLoopThreadPool.s

CMakeFiles/Rose.dir/EventLoopThreadPool.o.requires:
.PHONY : CMakeFiles/Rose.dir/EventLoopThreadPool.o.requires

CMakeFiles/Rose.dir/EventLoopThreadPool.o.provides: CMakeFiles/Rose.dir/EventLoopThreadPool.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/EventLoopThreadPool.o.provides.build
.PHONY : CMakeFiles/Rose.dir/EventLoopThreadPool.o.provides

CMakeFiles/Rose.dir/EventLoopThreadPool.o.provides.build: CMakeFiles/Rose.dir/EventLoopThreadPool.o

CMakeFiles/Rose.dir/TcpServer.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/TcpServer.o: ../TcpServer.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/TcpServer.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/TcpServer.o -c /data/home/jasonyichen/Rose/TcpServer.cc

CMakeFiles/Rose.dir/TcpServer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/TcpServer.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/TcpServer.cc > CMakeFiles/Rose.dir/TcpServer.i

CMakeFiles/Rose.dir/TcpServer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/TcpServer.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/TcpServer.cc -o CMakeFiles/Rose.dir/TcpServer.s

CMakeFiles/Rose.dir/TcpServer.o.requires:
.PHONY : CMakeFiles/Rose.dir/TcpServer.o.requires

CMakeFiles/Rose.dir/TcpServer.o.provides: CMakeFiles/Rose.dir/TcpServer.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/TcpServer.o.provides.build
.PHONY : CMakeFiles/Rose.dir/TcpServer.o.provides

CMakeFiles/Rose.dir/TcpServer.o.provides.build: CMakeFiles/Rose.dir/TcpServer.o

CMakeFiles/Rose.dir/InetAddress.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/InetAddress.o: ../InetAddress.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_15)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/InetAddress.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/InetAddress.o -c /data/home/jasonyichen/Rose/InetAddress.cc

CMakeFiles/Rose.dir/InetAddress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/InetAddress.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/InetAddress.cc > CMakeFiles/Rose.dir/InetAddress.i

CMakeFiles/Rose.dir/InetAddress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/InetAddress.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/InetAddress.cc -o CMakeFiles/Rose.dir/InetAddress.s

CMakeFiles/Rose.dir/InetAddress.o.requires:
.PHONY : CMakeFiles/Rose.dir/InetAddress.o.requires

CMakeFiles/Rose.dir/InetAddress.o.provides: CMakeFiles/Rose.dir/InetAddress.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/InetAddress.o.provides.build
.PHONY : CMakeFiles/Rose.dir/InetAddress.o.provides

CMakeFiles/Rose.dir/InetAddress.o.provides.build: CMakeFiles/Rose.dir/InetAddress.o

CMakeFiles/Rose.dir/EventLoop.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/EventLoop.o: ../EventLoop.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_16)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/EventLoop.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/EventLoop.o -c /data/home/jasonyichen/Rose/EventLoop.cc

CMakeFiles/Rose.dir/EventLoop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/EventLoop.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/EventLoop.cc > CMakeFiles/Rose.dir/EventLoop.i

CMakeFiles/Rose.dir/EventLoop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/EventLoop.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/EventLoop.cc -o CMakeFiles/Rose.dir/EventLoop.s

CMakeFiles/Rose.dir/EventLoop.o.requires:
.PHONY : CMakeFiles/Rose.dir/EventLoop.o.requires

CMakeFiles/Rose.dir/EventLoop.o.provides: CMakeFiles/Rose.dir/EventLoop.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/EventLoop.o.provides.build
.PHONY : CMakeFiles/Rose.dir/EventLoop.o.provides

CMakeFiles/Rose.dir/EventLoop.o.provides.build: CMakeFiles/Rose.dir/EventLoop.o

CMakeFiles/Rose.dir/Acceptor.o: CMakeFiles/Rose.dir/flags.make
CMakeFiles/Rose.dir/Acceptor.o: ../Acceptor.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /data/home/jasonyichen/Rose/build/CMakeFiles $(CMAKE_PROGRESS_17)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Rose.dir/Acceptor.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Rose.dir/Acceptor.o -c /data/home/jasonyichen/Rose/Acceptor.cc

CMakeFiles/Rose.dir/Acceptor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rose.dir/Acceptor.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/home/jasonyichen/Rose/Acceptor.cc > CMakeFiles/Rose.dir/Acceptor.i

CMakeFiles/Rose.dir/Acceptor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rose.dir/Acceptor.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/home/jasonyichen/Rose/Acceptor.cc -o CMakeFiles/Rose.dir/Acceptor.s

CMakeFiles/Rose.dir/Acceptor.o.requires:
.PHONY : CMakeFiles/Rose.dir/Acceptor.o.requires

CMakeFiles/Rose.dir/Acceptor.o.provides: CMakeFiles/Rose.dir/Acceptor.o.requires
	$(MAKE) -f CMakeFiles/Rose.dir/build.make CMakeFiles/Rose.dir/Acceptor.o.provides.build
.PHONY : CMakeFiles/Rose.dir/Acceptor.o.provides

CMakeFiles/Rose.dir/Acceptor.o.provides.build: CMakeFiles/Rose.dir/Acceptor.o

# Object files for target Rose
Rose_OBJECTS = \
"CMakeFiles/Rose.dir/EPollPoller.o" \
"CMakeFiles/Rose.dir/CurrentThread.o" \
"CMakeFiles/Rose.dir/Logger.o" \
"CMakeFiles/Rose.dir/TcpConnection.o" \
"CMakeFiles/Rose.dir/Buffer.o" \
"CMakeFiles/Rose.dir/Thread.o" \
"CMakeFiles/Rose.dir/Poller.o" \
"CMakeFiles/Rose.dir/Timestamp.o" \
"CMakeFiles/Rose.dir/Socket.o" \
"CMakeFiles/Rose.dir/Channel.o" \
"CMakeFiles/Rose.dir/EventLoopThread.o" \
"CMakeFiles/Rose.dir/DefaultPoller.o" \
"CMakeFiles/Rose.dir/EventLoopThreadPool.o" \
"CMakeFiles/Rose.dir/TcpServer.o" \
"CMakeFiles/Rose.dir/InetAddress.o" \
"CMakeFiles/Rose.dir/EventLoop.o" \
"CMakeFiles/Rose.dir/Acceptor.o"

# External object files for target Rose
Rose_EXTERNAL_OBJECTS =

../lib/libRose.so: CMakeFiles/Rose.dir/EPollPoller.o
../lib/libRose.so: CMakeFiles/Rose.dir/CurrentThread.o
../lib/libRose.so: CMakeFiles/Rose.dir/Logger.o
../lib/libRose.so: CMakeFiles/Rose.dir/TcpConnection.o
../lib/libRose.so: CMakeFiles/Rose.dir/Buffer.o
../lib/libRose.so: CMakeFiles/Rose.dir/Thread.o
../lib/libRose.so: CMakeFiles/Rose.dir/Poller.o
../lib/libRose.so: CMakeFiles/Rose.dir/Timestamp.o
../lib/libRose.so: CMakeFiles/Rose.dir/Socket.o
../lib/libRose.so: CMakeFiles/Rose.dir/Channel.o
../lib/libRose.so: CMakeFiles/Rose.dir/EventLoopThread.o
../lib/libRose.so: CMakeFiles/Rose.dir/DefaultPoller.o
../lib/libRose.so: CMakeFiles/Rose.dir/EventLoopThreadPool.o
../lib/libRose.so: CMakeFiles/Rose.dir/TcpServer.o
../lib/libRose.so: CMakeFiles/Rose.dir/InetAddress.o
../lib/libRose.so: CMakeFiles/Rose.dir/EventLoop.o
../lib/libRose.so: CMakeFiles/Rose.dir/Acceptor.o
../lib/libRose.so: CMakeFiles/Rose.dir/build.make
../lib/libRose.so: CMakeFiles/Rose.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../lib/libRose.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Rose.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Rose.dir/build: ../lib/libRose.so
.PHONY : CMakeFiles/Rose.dir/build

CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/EPollPoller.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/CurrentThread.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/Logger.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/TcpConnection.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/Buffer.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/Thread.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/Poller.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/Timestamp.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/Socket.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/Channel.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/EventLoopThread.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/DefaultPoller.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/EventLoopThreadPool.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/TcpServer.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/InetAddress.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/EventLoop.o.requires
CMakeFiles/Rose.dir/requires: CMakeFiles/Rose.dir/Acceptor.o.requires
.PHONY : CMakeFiles/Rose.dir/requires

CMakeFiles/Rose.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Rose.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Rose.dir/clean

CMakeFiles/Rose.dir/depend:
	cd /data/home/jasonyichen/Rose/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/home/jasonyichen/Rose /data/home/jasonyichen/Rose /data/home/jasonyichen/Rose/build /data/home/jasonyichen/Rose/build /data/home/jasonyichen/Rose/build/CMakeFiles/Rose.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Rose.dir/depend

