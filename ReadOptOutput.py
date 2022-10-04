import os
import sys

from pathlib import Path

from ax.service.utils.report_utils import get_standard_plots, exp_to_df
from boa import load_yaml, scheduler_from_json_file
import plotly.graph_objects as go
import yaml

from elm_wrapper import get_model_obs

# Full filepath to the scheduler.json file in the experiment output directory
scheduler_fp = Path(
    "/global/cscratch1/sd/yazbeck/US_LA3_Wetl_C3Gra_Trans/ParamOutput/US_LA3_Wetl_C3Gra_Trans_20220922T075018/scheduler.json"
)
experiment_dir = scheduler_fp.parent

# CHANGE TO THE CORRECT PATH FOR YOUR CONFIG FILE
ex_config_file = experiment_dir / "US_LA3_Wetl_C3Gra_Trans_optimization_config.yml"

#Loading the experiment data saved in the scheduler.json file
scheduler = scheduler_from_json_file(scheduler_fp)
experiment = scheduler.experiment
best_trial, best_params, obj = scheduler.get_best_trial()
best_trial
OptOutputDf = exp_to_df(experiment)
OptOutputDf.to_csv(experiment_dir / "US_LA3_Wetl_C3Gra_Trans_OptOuput.csv")
print(exp_to_df(experiment))
print('Best trial: ',best_trial)
print('Best Parameters: ',best_params)
print('Objective: ',obj)
