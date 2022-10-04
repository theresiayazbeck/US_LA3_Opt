#!/bin/bash

set -e

# Created 2022-09-02 08:59:42

CASEDIR="/global/cscratch1/sd/yazbeck/US_LA3_Wetl_C3Gra_Trans"

/global/u1/y/yazbeck/E3SM_code/cime/scripts/create_newcase -case "${CASEDIR}" -compset I20TRGSWCNPECACNTBC -mach cori-knl -compiler intel -project m2467 -res 1x1_brazil

cd "${CASEDIR}"

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=02:00:00

./case.setup --reset

./case.build --clean

./case.build

./case.submit

./case.setup --reset

./case.build --clean

./case.build

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.setup --reset

./case.build --clean

./case.build

./case.submit

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.setup --reset

./case.build --clean

./case.build

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.setup --reset

./case.build --clean

./case.build

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.setup --reset

./case.build --clean

./case.build

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.submit

./case.submit

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.setup --reset

./case.build --clean

./case.build

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./case.submit

./case.build --clean

./case.build

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=00:10:00

./case.submit

./xmlchange -file env_run.xml -id ELM_BLDNML_OPTS -val -bgc bgc -nutrient cnp -nutrient_comp_pathway eca -soil_decomp century

./xmlchange --id ATM_NCPL --val 24

./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTASKS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ATM -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_CPL -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_LND -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ICE -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_OCN -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_GLC -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ROF -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_WAV -val 1

./xmlchange -file env_mach_pes.xml -id NTHRDS_ESP -val 1

./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

./xmlchange -file env_mach_pes.xml -id MAX_MPITASKS_PER_NODE -val 1

./xmlchange -file env_run.xml -id RUN_STARTDATE -val 2012-01-01

./xmlchange -file env_run.xml -id DATM_MODE -val CLMGSWP3v1

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_ALIGN -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 1901

./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 1920

./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val domain_sparse_grids_US_LA3_Wetl_C3Gra_c220509.nc

./xmlchange -file env_run.xml ATM_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml LND_DOMAIN_PATH=/global/cscratch1/sd/yazbeck/acme_scratch/cori-knl/user_data/

./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

./xmlchange -file env_run.xml -id REST_N -val 1

./xmlchange -file env_run.xml -id STOP_N -val 1

./xmlchange -file env_workflow.xml JOB_QUEUE=regular

./xmlchange -file env_workflow.xml JOB_WALLCLOCK_TIME=02:00:00

./case.submit

