#!/bin/bash
source $(conda info --base)/etc/profile.d/conda.sh

DATASET=${1:-"VNBench_original"}

# conda activate ve37
# python run.py --data $DATASET --model cambrian_34b

# conda deactivate
# conda activate vila
# python run.py --data $DATASET --model VILA1.5-40b

# conda deactivate
# conda activate venew
# python run.py --data $DATASET --model chameleon_30b

conda deactivate
conda activate venew_molmo
python run.py --data $DATASET --model molmo-72B-0924

conda deactivate
conda activate venew
python run.py --data $DATASET --model Qwen2-VL-72B-Instruct

