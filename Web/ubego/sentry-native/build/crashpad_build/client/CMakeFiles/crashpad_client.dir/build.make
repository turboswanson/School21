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
CMAKE_SOURCE_DIR = /home/mitchelk/Downloads/SentryTest/sentry-native

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mitchelk/Downloads/SentryTest/sentry-native/build

# Include any dependencies generated for this target.
include crashpad_build/client/CMakeFiles/crashpad_client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.make

# Include the progress variables for this target.
include crashpad_build/client/CMakeFiles/crashpad_client.dir/progress.make

# Include the compile flags for this target's objects.
include crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make

crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation.cc.o: ../external/crashpad/client/annotation.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation.cc.o -MF CMakeFiles/crashpad_client.dir/annotation.cc.o.d -o CMakeFiles/crashpad_client.dir/annotation.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/annotation.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/annotation.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/annotation.cc > CMakeFiles/crashpad_client.dir/annotation.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/annotation.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/annotation.cc -o CMakeFiles/crashpad_client.dir/annotation.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation_list.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation_list.cc.o: ../external/crashpad/client/annotation_list.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation_list.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation_list.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation_list.cc.o -MF CMakeFiles/crashpad_client.dir/annotation_list.cc.o.d -o CMakeFiles/crashpad_client.dir/annotation_list.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/annotation_list.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation_list.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/annotation_list.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/annotation_list.cc > CMakeFiles/crashpad_client.dir/annotation_list.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation_list.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/annotation_list.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/annotation_list.cc -o CMakeFiles/crashpad_client.dir/annotation_list.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database.cc.o: ../external/crashpad/client/crash_report_database.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database.cc.o -MF CMakeFiles/crashpad_client.dir/crash_report_database.cc.o.d -o CMakeFiles/crashpad_client.dir/crash_report_database.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crash_report_database.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/crash_report_database.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crash_report_database.cc > CMakeFiles/crashpad_client.dir/crash_report_database.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/crash_report_database.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crash_report_database.cc -o CMakeFiles/crashpad_client.dir/crash_report_database.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info.cc.o: ../external/crashpad/client/crashpad_info.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info.cc.o -MF CMakeFiles/crashpad_client.dir/crashpad_info.cc.o.d -o CMakeFiles/crashpad_client.dir/crashpad_info.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_info.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/crashpad_info.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_info.cc > CMakeFiles/crashpad_client.dir/crashpad_info.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/crashpad_info.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_info.cc -o CMakeFiles/crashpad_client.dir/crashpad_info.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o: ../external/crashpad/client/prune_crash_reports.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o -MF CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o.d -o CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/prune_crash_reports.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/prune_crash_reports.cc > CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/prune_crash_reports.cc -o CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/settings.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/settings.cc.o: ../external/crashpad/client/settings.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/settings.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/settings.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/settings.cc.o -MF CMakeFiles/crashpad_client.dir/settings.cc.o.d -o CMakeFiles/crashpad_client.dir/settings.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/settings.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/settings.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/settings.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/settings.cc > CMakeFiles/crashpad_client.dir/settings.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/settings.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/settings.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/settings.cc -o CMakeFiles/crashpad_client.dir/settings.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o: ../external/crashpad/client/crashpad_client_linux.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o -MF CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o.d -o CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_client_linux.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_client_linux.cc > CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_client_linux.cc -o CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o: ../external/crashpad/client/client_argv_handling.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o -MF CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o.d -o CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/client_argv_handling.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/client_argv_handling.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/client_argv_handling.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/client_argv_handling.cc > CMakeFiles/crashpad_client.dir/client_argv_handling.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/client_argv_handling.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/client_argv_handling.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/client_argv_handling.cc -o CMakeFiles/crashpad_client.dir/client_argv_handling.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o: ../external/crashpad/client/crash_report_database_generic.cc
crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o -MF CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o.d -o CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crash_report_database_generic.cc

crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crash_report_database_generic.cc > CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crash_report_database_generic.cc -o CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.s

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info_note.S.o: crashpad_build/client/CMakeFiles/crashpad_client.dir/flags.make
crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info_note.S.o: ../external/crashpad/client/crashpad_info_note.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building ASM object crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info_note.S.o"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/crashpad_client.dir/crashpad_info_note.S.o -c /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_info_note.S

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info_note.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/crashpad_client.dir/crashpad_info_note.S.i"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_info_note.S > CMakeFiles/crashpad_client.dir/crashpad_info_note.S.i

crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info_note.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/crashpad_client.dir/crashpad_info_note.S.s"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client/crashpad_info_note.S -o CMakeFiles/crashpad_client.dir/crashpad_info_note.S.s

# Object files for target crashpad_client
crashpad_client_OBJECTS = \
"CMakeFiles/crashpad_client.dir/annotation.cc.o" \
"CMakeFiles/crashpad_client.dir/annotation_list.cc.o" \
"CMakeFiles/crashpad_client.dir/crash_report_database.cc.o" \
"CMakeFiles/crashpad_client.dir/crashpad_info.cc.o" \
"CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o" \
"CMakeFiles/crashpad_client.dir/settings.cc.o" \
"CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o" \
"CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o" \
"CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o" \
"CMakeFiles/crashpad_client.dir/crashpad_info_note.S.o"

# External object files for target crashpad_client
crashpad_client_EXTERNAL_OBJECTS =

crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/annotation_list.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/prune_crash_reports.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/settings.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_client_linux.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/client_argv_handling.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/crash_report_database_generic.cc.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/crashpad_info_note.S.o
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/build.make
crashpad_build/client/libcrashpad_client.a: crashpad_build/client/CMakeFiles/crashpad_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mitchelk/Downloads/SentryTest/sentry-native/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX static library libcrashpad_client.a"
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && $(CMAKE_COMMAND) -P CMakeFiles/crashpad_client.dir/cmake_clean_target.cmake
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crashpad_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crashpad_build/client/CMakeFiles/crashpad_client.dir/build: crashpad_build/client/libcrashpad_client.a
.PHONY : crashpad_build/client/CMakeFiles/crashpad_client.dir/build

crashpad_build/client/CMakeFiles/crashpad_client.dir/clean:
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client && $(CMAKE_COMMAND) -P CMakeFiles/crashpad_client.dir/cmake_clean.cmake
.PHONY : crashpad_build/client/CMakeFiles/crashpad_client.dir/clean

crashpad_build/client/CMakeFiles/crashpad_client.dir/depend:
	cd /home/mitchelk/Downloads/SentryTest/sentry-native/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mitchelk/Downloads/SentryTest/sentry-native /home/mitchelk/Downloads/SentryTest/sentry-native/external/crashpad/client /home/mitchelk/Downloads/SentryTest/sentry-native/build /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client /home/mitchelk/Downloads/SentryTest/sentry-native/build/crashpad_build/client/CMakeFiles/crashpad_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crashpad_build/client/CMakeFiles/crashpad_client.dir/depend

