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



all_case = '/global/cscratch1/sd/yazbeck/CA_TVC_Trans_opt_'

for i in range(5):

    case = all_case + str(i)
    cmd = (f"rm -r {case}")
    subprocess.run(cmd, universal_newlines=True, shell=True)
    

