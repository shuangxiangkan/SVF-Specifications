# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shuangxiangkan/SVF-Tools/SVF

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shuangxiangkan/SVF-Tools/SVF/Release-build

# Include any dependencies generated for this target.
include tools/SABER/CMakeFiles/saber.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/SABER/CMakeFiles/saber.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/SABER/CMakeFiles/saber.dir/progress.make

# Include the compile flags for this target's objects.
include tools/SABER/CMakeFiles/saber.dir/flags.make

tools/SABER/CMakeFiles/saber.dir/saber.cpp.o: tools/SABER/CMakeFiles/saber.dir/flags.make
tools/SABER/CMakeFiles/saber.dir/saber.cpp.o: ../tools/SABER/saber.cpp
tools/SABER/CMakeFiles/saber.dir/saber.cpp.o: tools/SABER/CMakeFiles/saber.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shuangxiangkan/SVF-Tools/SVF/Release-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/SABER/CMakeFiles/saber.dir/saber.cpp.o"
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/SABER && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tools/SABER/CMakeFiles/saber.dir/saber.cpp.o -MF CMakeFiles/saber.dir/saber.cpp.o.d -o CMakeFiles/saber.dir/saber.cpp.o -c /Users/shuangxiangkan/SVF-Tools/SVF/tools/SABER/saber.cpp

tools/SABER/CMakeFiles/saber.dir/saber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/saber.dir/saber.cpp.i"
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/SABER && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shuangxiangkan/SVF-Tools/SVF/tools/SABER/saber.cpp > CMakeFiles/saber.dir/saber.cpp.i

tools/SABER/CMakeFiles/saber.dir/saber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/saber.dir/saber.cpp.s"
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/SABER && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shuangxiangkan/SVF-Tools/SVF/tools/SABER/saber.cpp -o CMakeFiles/saber.dir/saber.cpp.s

# Object files for target saber
saber_OBJECTS = \
"CMakeFiles/saber.dir/saber.cpp.o"

# External object files for target saber
saber_EXTERNAL_OBJECTS =

bin/saber: tools/SABER/CMakeFiles/saber.dir/saber.cpp.o
bin/saber: tools/SABER/CMakeFiles/saber.dir/build.make
bin/saber: lib/libSvf.a
bin/saber: lib/CUDD/libCudd.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMBitWriter.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMCore.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMipo.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMIRReader.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMInstCombine.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMInstrumentation.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMTarget.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMLinker.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMAnalysis.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMScalarOpts.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMSupport.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMTransformUtils.a
bin/saber: ../z3.obj/lib/libz3.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMBitWriter.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMAsmParser.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMInstCombine.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMAggressiveInstCombine.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMFrontendOpenMP.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMVectorize.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMTransformUtils.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMAnalysis.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMObject.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMBitReader.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMMCParser.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMTextAPI.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMProfileData.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMCore.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMRemarks.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMBitstreamReader.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMMC.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMBinaryFormat.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMDebugInfoCodeView.a
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMSupport.a
bin/saber: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
bin/saber: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libcurses.tbd
bin/saber: ../llvm-13.0.0.obj/lib/libLLVMDemangle.a
bin/saber: tools/SABER/CMakeFiles/saber.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shuangxiangkan/SVF-Tools/SVF/Release-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/saber"
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/SABER && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/saber.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/SABER/CMakeFiles/saber.dir/build: bin/saber
.PHONY : tools/SABER/CMakeFiles/saber.dir/build

tools/SABER/CMakeFiles/saber.dir/clean:
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/SABER && $(CMAKE_COMMAND) -P CMakeFiles/saber.dir/cmake_clean.cmake
.PHONY : tools/SABER/CMakeFiles/saber.dir/clean

tools/SABER/CMakeFiles/saber.dir/depend:
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shuangxiangkan/SVF-Tools/SVF /Users/shuangxiangkan/SVF-Tools/SVF/tools/SABER /Users/shuangxiangkan/SVF-Tools/SVF/Release-build /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/SABER /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/SABER/CMakeFiles/saber.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/SABER/CMakeFiles/saber.dir/depend

