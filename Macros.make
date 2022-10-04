
# This file is auto-generated, do not edit. If you want to change
# sharedlib flags, you can edit the cmake_macros in this case. You
# can change flags for specific sharedlibs only by checking COMP_NAME.

ALBANY_PATH := /global/homes/m/mperego/e3sm-software/albany-trilinos/albany-install-2021-10-01
CFLAGS :=  -fp-model precise -std=gnu99 -O2 -debug minimal
CMAKE_OPTS :=  -DCMAKE_SYSTEM_NAME=Catamount
CONFIG_ARGS :=  --host=cray
CPPDEFS := $(CPPDEFS)  -DFORTRANUNDERSCORE -DNO_R16 -DCPRINTEL -DLINUX -DARCH_MIC_KNL
CXXFLAGS :=  -std=c++14 -fp-model source -O2 -fp-model consistent
CXX_LDFLAGS :=  -cxxlib
CXX_LINKER := FORTRAN
FC_AUTO_R8 :=  -r8
FFLAGS :=  -convert big_endian -assume byterecl -ftz -traceback -assume realloc_lhs -fp-model source -O2 -debug minimal -fp-model consistent -fimf-use-svml -qno-opt-dynamic-align -DHAVE_ERF_INTRINSICS
FFLAGS_NOOPT :=  -O0
FIXEDFLAGS :=  -fixed -132
FREEFLAGS :=  -free
HAS_F2008_CONTIGUOUS := TRUE
MACRO_FILE := 
MPICC := cc
MPICXX := CC
MPIFC := ftn
MPI_LIB_NAME := mpich
MPI_PATH := /opt/cray/pe/mpt/7.7.10/gni/mpich-intel/16.0
NETCDF_PATH := /opt/cray/pe/netcdf-hdf5parallel/4.6.3.2/INTEL/19.0
PETSC_PATH := 
PIO_FILESYSTEM_HINTS := lustre
PNETCDF_PATH := /opt/cray/pe/parallel-netcdf/1.11.1.1/INTEL/19.0
SCC := icc
SCXX := icpc
SFC := ifort
SLIBS := $(SLIBS)  -L/opt/cray/pe/netcdf-hdf5parallel/4.6.3.2/INTEL/19.0 -lnetcdff -Wl,--as-needed,-L/opt/cray/pe/netcdf-hdf5parallel/4.6.3.2/INTEL/19.0/lib -lnetcdff -lnetcdf -mkl -lpthread
SUPPORTS_CXX := TRUE

ifeq "$(COMP_NAME)" "gptl"
  CPPDEFS := $(CPPDEFS)  -DFORTRANUNDERSCORE -DNO_R16 -DCPRINTEL -DLINUX -DHAVE_NANOTIME -DBIT64 -DHAVE_VPRINTF -DHAVE_BACKTRACE -DHAVE_SLASHPROC -DHAVE_COMM_F2C -DHAVE_TIMES -DHAVE_GETTIMEOFDAY -DARCH_MIC_KNL
endif
