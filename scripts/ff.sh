#!/bin/bash
# /user/HS502/yl02706/.conda/envs/lyc/bin/python3 /user/HS502/yl02706/frame_finder/frame_finder.py roberta-base /user/HS502/yl02706/open-sesame/data/open_sesame_v1_data/fn1.7

python3 frame_finder/frame_finder.py roberta-base data_all/open_sesame_v1_data/fn1.7


# nohup python3 frame_finder/frame_finder.py roberta-base data_all/open_sesame_v1_data/fn1.7 > output.txt &