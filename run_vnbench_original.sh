#!/bin/bash
source $(conda info --base)/etc/profile.d/conda.sh

# export OPENAI_API_KEY=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

DATASET=${1:-"VNBench_original"}

# conda activate ve37
# python run.py --data $DATASET --model \
#                                     llava_v1.5_7b \
#                                     llava_v1.5_13b \
#                                     deepseek_vl_1.3b \
#                                     deepseek_vl_7b \
#                                     cambrian_8b \
#                                     cambrian_13b \
#                                     cambrian_34b

# conda deactivate
# conda activate vila
# python run.py --data $DATASET --model \
#                                     VILA1.5-3b \
#                                     Llama-3-VILA1.5-8b \
#                                     VILA1.5-13b \
#                                     VILA1.5-40b

# conda deactivate
# conda activate velavis
# python run.py --data $DATASET --model \
#                                         instructblip_7b \
#                                         instructblip_13b

# conda deactivate
# conda activate venew
# python run.py --data $DATASET --model \
#                                         Qwen2-VL-2B-Instruct \
#                                         Qwen2-VL-7B-Instruct \
#                                         chameleon_7b \
#                                         chameleon_30b


# conda deactivate
# conda activate venew
# python run.py --data $DATASET --model Qwen2-VL-72B-Instruct

conda deactivate
conda activate venew_molmo
python run.py --data $DATASET --model molmoE-1B-0924 molmo-7B-D-0924 molmo-7B-O-0924 molmo-72B-0924