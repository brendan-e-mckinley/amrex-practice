# Install script for directory: /Users/Mac/amrex-practice/amrex

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/Mac/amrex-practice/build/amrex/Src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/AMReX" TYPE FILE FILES
    "/Users/Mac/amrex-practice/build/amrex/lib/cmake/AMReX/AMReXConfig.cmake"
    "/Users/Mac/amrex-practice/build/amrex/lib/cmake/AMReX/AMReXConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/Mac/amrex-practice/build/amrex/Src/libamrex_2d.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libamrex_2d.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libamrex_2d.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libamrex_2d.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ccse-mpi.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Math.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Algorithm.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Any.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Array.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BlockMutex.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Enum.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuComplex.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Order.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_SmallMatrix.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ConstexprFor.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Vector.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_TableData.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Tuple.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_TypeList.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Demangle.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Exception.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Extension.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_PODVector.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ParmParse.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Functional.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Stack.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_String.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Utility.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FileSystem.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ValLocPair.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Reduce.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Scan.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Partition.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Morton.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Random.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_RandomEngine.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BLassert.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ArrayLim.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_REAL.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_INT.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_CONSTANTS.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_SPACE.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_DistributionMapping.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ParallelDescriptor.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_OpenMP.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ParallelReduce.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ForkJoin.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ParallelContext.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_VisMFBuffer.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_VisMF.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_AsyncOut.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BackgroundThread.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Arena.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BArena.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_CArena.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_PArena.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_DataAllocator.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BLProfiler.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BLBackTrace.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BLFort.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_NFiles.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_parstream.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ANSIEscCode.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FabConv.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FPC.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_VectorIO.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Print.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_IntConv.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_IOFormat.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Box.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BoxIterator.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Dim3.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_IntVect.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_IndexType.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Loop.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Loop.nolint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Orientation.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Periodicity.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_RealBox.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_RealVect.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BoxList.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BoxArray.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BoxDomain.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FArrayBox.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_IArrayBox.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BaseFab.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Array4.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MakeType.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_TypeTraits.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FabDataType.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FabFactory.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BaseFabUtility.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MultiFab.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MFCopyDescriptor.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_iMultiFab.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FabArrayBase.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MFIter.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FabArray.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FACopyDescriptor.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FabArrayCommI.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FBI.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_PCI.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FabArrayUtility.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_LayoutData.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_CoordSys.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_COORDSYS_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_COORDSYS_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Geometry.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MultiFabUtil.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MultiFabUtilI.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MultiFabUtil_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MultiFabUtil_nd_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MultiFabUtil_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BCRec.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_PhysBCFunct.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BCUtil.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BC_TYPES.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FilCC_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FilCC_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FilFC_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FilFC_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FilND_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_NonLocalBC.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_NonLocalBCImpl.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_PlotFileUtil.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_PlotFileDataImpl.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_FEIntegrator.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_IntegratorBase.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_RKIntegrator.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_TimeIntegrator.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_RungeKutta.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Gpu.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuQualifiers.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuKernelInfo.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuPrint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuAssert.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuTypes.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuControl.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunch.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunch.nolint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunchGlobal.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunchMacrosG.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunchMacrosG.nolint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunchMacrosC.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunchMacrosC.nolint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunchFunctsG.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuLaunchFunctsC.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuError.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuDevice.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuBuffer.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuAtomic.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuUtility.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuAsyncArray.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuElixir.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuMemory.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuRange.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuReduce.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuAllocators.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_GpuContainers.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MFParallelFor.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MFParallelForC.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MFParallelForG.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_SIMD.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_TagParallelFor.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_CTOParallelForImpl.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_ParReduce.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_CudaGraph.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Machine.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_MemPool.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/AMReX_Parser.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/AMReX_Parser_Exe.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/AMReX_Parser_Y.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/amrex_parser.lex.nolint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/amrex_parser.tab.nolint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/AMReX_IParser.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/AMReX_IParser_Exe.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/AMReX_IParser_Y.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/amrex_iparser.lex.nolint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/Parser/amrex_iparser.tab.nolint.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_LUSolver.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_Slopes_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Base/AMReX_BaseFwd.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_FabSet.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_BndryRegister.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_Mask.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_MultiMask.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_BndryData.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_BoundCond.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_InterpBndryData.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_LO_BCTYPES.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_InterpBndryData_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_InterpBndryData_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_LOUtil_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_YAFluxRegister.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_YAFluxRegister_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_YAFluxRegister_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_BoundaryFwd.H"
    "/Users/Mac/amrex-practice/amrex/Src/Boundary/AMReX_EdgeFluxRegister.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_AmrCore.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_Cluster.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_ErrorList.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_FillPatchUtil.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_FillPatchUtil_I.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_FillPatcher.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_FluxRegister.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_InterpBase.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_MFInterpolater.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_Interpolater.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_TagBox.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_AmrMesh.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_FluxReg_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_FluxReg_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_Interp_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_Interp_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_MFInterp_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_MFInterp_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_InterpFaceRegister.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_InterpFaceReg_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_InterpFaceReg_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_AmrCoreFwd.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_AmrParGDB.H"
    "/Users/Mac/amrex-practice/amrex/Src/AmrCore/AMReX_AmrParticles.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_LevelBld.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_Amr.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_AmrLevel.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_Derive.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_StateData.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_PROB_AMR_F.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_StateDescriptor.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_AuxBoundaryData.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_Extrapolater.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_extrapolater_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_extrapolater_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Amr/AMReX_AmrFwd.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBFArrayBox.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBFabFactory.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBMultiFabUtil.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBMultiFabUtil_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBMultiFabUtil_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBCellFlag.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBData.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBDataCollection.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_MultiCutFab.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBSupport.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBInterpolater.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBMFInterpolater.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBFluxRegister.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBFluxRegister_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBFluxRegister_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EBAmrUtil.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB_utils.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB_Redistribution.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB_StateRedistSlopeLimiter_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB_Slopes_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB_Slopes_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_algoim.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_algoim_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_AllRegular.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Box.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Cylinder.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Ellipsoid.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Plane.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Sphere.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Torus.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_distFcnElement.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Spline.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Polynomial.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Complement.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Intersection.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Lathe.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Rotation.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Scale.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Translation.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Union.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Extrusion.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Difference.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Parser.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_Base.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IF_DevicePtr.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_GeometryShop.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IndexSpaceI.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_Level.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_Graph.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_MultiGFab.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_2D_C.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB_STL_utils.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB_chkpt_file.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB_triGeomOps_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_Level_STL.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IndexSpace_STL.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_Level_chkpt_file.H"
    "/Users/Mac/amrex-practice/amrex/Src/EB/AMReX_EB2_IndexSpace_chkpt_file.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLMG.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLMG_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLMG_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLMGBndry.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLLinOp.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLLinOp_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLCellLinOp.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeLinOp.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeLinOp_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeLinOp_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLCellABecLap.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLCellABecLap_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLCellABecLap_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLCGSolver.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_PCGSolver.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLABecLaplacian.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLABecLap_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLABecLap_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLALaplacian.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLALap_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLALap_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLPoisson.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLPoisson_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLPoisson_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_GMRES.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_GMRES_MLMG.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_GMRES_MV.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_Smoother_MV.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_Algebra.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_AlgPartition.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_AlgVector.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_SpMatrix.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/AMReX_SpMV.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLCurlCurl.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLCurlCurl_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBNodeFDLaplacian.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBNodeFDLap_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBNodeFDLap_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeTensorLaplacian.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeTensorLap_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeTensorLap_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeABecLaplacian.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeABecLap_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeABecLap_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeLaplacian.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeLap_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLNodeLap_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLTensorOp.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLTensor_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLTensor_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBABecLap.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBABecLap_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBABecLap_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBTensorOp.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBTensor_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/LinearSolvers/MLMG/AMReX_MLEBTensor_2D_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_Particles.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleContainer.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_SparseBins.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParGDB.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_Particle_mod_K.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_TracerParticles.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_NeighborParticles.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_NeighborParticlesI.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_NeighborList.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_Particle.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleInit.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleContainerI.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParIter.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleMPIUtil.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleUtil.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_StructOfArrays.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ArrayOfStructs.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleTile.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_MakeParticle.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_NeighborParticlesCPUImpl.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_NeighborParticlesGPUImpl.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleBufferMap.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleCommunication.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleInterpolators.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleReduce.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleMesh.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleLocator.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleIO.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_DenseBins.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_BinIterator.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleTransformation.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_WriteBinaryParticleData.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleContainerBase.H"
    "/Users/Mac/amrex-practice/amrex/Src/Particle/AMReX_ParticleArray.H"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/AMReX/AMReXTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/AMReX/AMReXTargets.cmake"
         "/Users/Mac/amrex-practice/build/amrex/CMakeFiles/Export/2260e541ece776bcef17e59de6c71ec8/AMReXTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/AMReX/AMReXTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/AMReX/AMReXTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/AMReX" TYPE FILE FILES "/Users/Mac/amrex-practice/build/amrex/CMakeFiles/Export/2260e541ece776bcef17e59de6c71ec8/AMReXTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/AMReX" TYPE FILE FILES "/Users/Mac/amrex-practice/build/amrex/CMakeFiles/Export/2260e541ece776bcef17e59de6c71ec8/AMReXTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(CREATE_LINK
           libamrex_2d.a
           "/usr/local/lib/libamrex.a"
           COPY_ON_ERROR SYMBOLIC)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amrex" TYPE DIRECTORY FILES
    "/Users/Mac/amrex-practice/amrex/Tools/C_scripts"
    "/Users/Mac/amrex-practice/amrex/Tools/typechecker"
    USE_SOURCE_PERMISSIONS)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/AMReX/AMReXCMakeModules" TYPE DIRECTORY FILES "/Users/Mac/amrex-practice/amrex/Tools/CMake/" USE_SOURCE_PERMISSIONS)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/Mac/amrex-practice/build/amrex/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
