import os
import subprocess
import time

# Create a directory to hold the parameter sets if one does not exist already
if not os.path.exists('parameter_output'):
    os.mkdir("parameter_output")

start = time.time()
# The number of iterations (This should be a while loop looking at a tollerance)
for i in range(2):
    # submit the script to generate parameters and then run the analysis
    print("seconds passed: {}".format(time.time() - start))
    subprocess.run(["sh", "optimization_iteration.sh"])

