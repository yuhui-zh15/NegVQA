#!/bin/bash
source $(conda info --base)/etc/profile.d/conda.sh

export OPENAI_API_KEY=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

DATASET=${1:-"VMCBench_original"}

# conda activate ve37
# python run.py --data $DATASET --model \
#                                     llava_v1.5_7b \
#                                     llava_v1.5_13b \
#                                     cogvlm-chat \
#                                     cogvlm2-llama3-chat-19B \
#                                     deepseek_vl_1.3b \
#                                     deepseek_vl_7b \
#                                     cambrian_8b \
#                                     cambrian_13b \
#                                     cambrian_34b

# python run.py --data $DATASET --model GPT4o_20240806 GPT4o_MINI

# conda deactivate
# conda activate ve40
# python run.py --data $DATASET --model \
#                                     idefics2_8b \
#                                     Phi-3-Vision \
#                                     Phi-3.5-Vision

# conda deactivate
# conda activate vila
# python run.py --data $DATASET --model \
#                                     VILA1.5-3b \
#                                     Llama-3-VILA1.5-8b \
#                                     VILA1.5-13b \
#                                     VILA1.5-40b

conda deactivate
conda activate velavis
python run.py --data $DATASET --model \
                                        instructblip_7b \
                                        instructblip_13b

conda deactivate
conda activate venew
python run.py --data $DATASET --model \
                                        paligemma-3b-mix-448 \
                                        Qwen2-VL-2B-Instruct \
                                        Qwen2-VL-7B-Instruct \
                                        chameleon_7b \
                                        chameleon_30b

