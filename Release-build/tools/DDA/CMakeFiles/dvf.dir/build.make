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
include tools/DDA/CMakeFiles/dvf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/DDA/CMakeFiles/dvf.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/DDA/CMakeFiles/dvf.dir/progress.make

# Include the compile flags for this target's objects.
include tools/DDA/CMakeFiles/dvf.dir/flags.make

tools/DDA/CMakeFiles/dvf.dir/dda.cpp.o: tools/DDA/CMakeFiles/dvf.dir/flags.make
tools/DDA/CMakeFiles/dvf.dir/dda.cpp.o: ../tools/DDA/dda.cpp
tools/DDA/CMakeFiles/dvf.dir/dda.cpp.o: tools/DDA/CMakeFiles/dvf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shuangxiangkan/SVF-Tools/SVF/Release-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/DDA/CMakeFiles/dvf.dir/dda.cpp.o"
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/DDA && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tools/DDA/CMakeFiles/dvf.dir/dda.cpp.o -MF CMakeFiles/dvf.dir/dda.cpp.o.d -o CMakeFiles/dvf.dir/dda.cpp.o -c /Users/shuangxiangkan/SVF-Tools/SVF/tools/DDA/dda.cpp

tools/DDA/CMakeFiles/dvf.dir/dda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dvf.dir/dda.cpp.i"
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/DDA && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shuangxiangkan/SVF-Tools/SVF/tools/DDA/dda.cpp > CMakeFiles/dvf.dir/dda.cpp.i

tools/DDA/CMakeFiles/dvf.dir/dda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dvf.dir/dda.cpp.s"
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/DDA && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shuangxiangkan/SVF-Tools/SVF/tools/DDA/dda.cpp -o CMakeFiles/dvf.dir/dda.cpp.s

# Object files for target dvf
dvf_OBJECTS = \
"CMakeFiles/dvf.dir/dda.cpp.o"

# External object files for target dvf
dvf_EXTERNAL_OBJECTS =

bin/dvf: tools/DDA/CMakeFiles/dvf.dir/dda.cpp.o
bin/dvf: tools/DDA/CMakeFiles/dvf.dir/build.make
bin/dvf: lib/libSvf.a
bin/dvf: lib/CUDD/libCudd.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMBitWriter.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMCore.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMipo.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMIRReader.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMInstCombine.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMInstrumentation.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMTarget.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMLinker.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMAnalysis.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMScalarOpts.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMSupport.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMTransformUtils.a
bin/dvf: ../z3.obj/lib/libz3.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMBitWriter.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMAsmParser.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMInstCombine.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMAggressiveInstCombine.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMFrontendOpenMP.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMVectorize.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMTransformUtils.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMAnalysis.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMObject.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMBitReader.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMMCParser.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMTextAPI.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMProfileData.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMCore.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMRemarks.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMBitstreamReader.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMMC.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMBinaryFormat.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMDebugInfoCodeView.a
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMSupport.a
bin/dvf: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
bin/dvf: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libcurses.tbd
bin/dvf: ../llvm-13.0.0.obj/lib/libLLVMDemangle.a
bin/dvf: tools/DDA/CMakeFiles/dvf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shuangxiangkan/SVF-Tools/SVF/Release-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/dvf"
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/DDA && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dvf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/DDA/CMakeFiles/dvf.dir/build: bin/dvf
.PHONY : tools/DDA/CMakeFiles/dvf.dir/build

tools/DDA/CMakeFiles/dvf.dir/clean:
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/DDA && $(CMAKE_COMMAND) -P CMakeFiles/dvf.dir/cmake_clean.cmake
.PHONY : tools/DDA/CMakeFiles/dvf.dir/clean

tools/DDA/CMakeFiles/dvf.dir/depend:
	cd /Users/shuangxiangkan/SVF-Tools/SVF/Release-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shuangxiangkan/SVF-Tools/SVF /Users/shuangxiangkan/SVF-Tools/SVF/tools/DDA /Users/shuangxiangkan/SVF-Tools/SVF/Release-build /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/DDA /Users/shuangxiangkan/SVF-Tools/SVF/Release-build/tools/DDA/CMakeFiles/dvf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/DDA/CMakeFiles/dvf.dir/depend

