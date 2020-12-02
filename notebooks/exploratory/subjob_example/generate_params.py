import os

# This is the directory created in the driver.py scripts
PARAMS_DIR_ROOT = 'parameter_output'
# This is the job id for this job - used by the next step to identify the parameters
PARAM_JOB_ID = os.environ["SLURM_JOB_ID"]
# Output for the current iterations params
CURRENT_PARAM_DIR = os.path.join(PARAMS_DIR_ROOT, PARAM_JOB_ID)

# This folder should not ever exist, but we still check
if not os.path.exists(CURRENT_PARAM_DIR):
    os.mkdir(CURRENT_PARAM_DIR)

print("generating params: {}".format(PARAM_JOB_ID))

# Write the parameters to a file for each of the jobs that are going to run
# I hard coded the job to consist of 4 subjobs that will run together
# I just write a file for each of the arrays jobs, this could also be a folder
#    What is important is the naming, I set the array to be from 1-4 so this must be consistant
PARAM_SET = ["param1", "param2", "param3", "param4"]
for i in range(4):
    # Create a new file in the correct parameter directory for the array job
    with open(os.path.join(CURRENT_PARAM_DIR, '{}.txt'.format(i + 1)), 'w') as fh:
        fh.write("{}, {}\n".format(PARAM_SET[i], PARAM_JOB_ID))
