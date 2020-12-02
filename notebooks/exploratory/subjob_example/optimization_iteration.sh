#!/bin/bash
# Run the script to generate parameters
PARAM_RESULT=$(sbatch "generate_params.sh")

# This extracts the Job ID for the previous command
PARAM_JID=${PARAM_RESULT##* }

# Wait until the previous batch script completes before running this
# I think that the --wait flag should pause this script until the job completes
OPTIIZE_JID=$(sbatch --wait --dependency "afterok:$PARAM_JID" "optimize.sh" "${PARAM_JID}")


