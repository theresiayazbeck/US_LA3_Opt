import yaml
import pandas as pd
import xarray as xr
import numpy as np
import atexit

from pathlib import Path

import subprocess
import os
import os.path
from os import path



all_case_1 = '/global/cscratch1/sd/yazbeck/e3sm_scratch/cori-knl/US_LA3_Wetl_C3Gra_Trans_opt_'
all_case_2 = '/run/US_LA3_Wetl_C3Gra_Trans_opt_'

for i in range(59):

    case = all_case_1 + str(i) + all_case_2 + str(i) + '.elm.h0.2012-11-30-00000.nc'
    cmd = (f"rm {case}")
    subprocess.run(cmd, universal_newlines=True, shell=True)
    

