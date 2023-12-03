#!/bin/bash
# /user/HS502/yl02706/.conda/envs/lyc/bin/python3 /user/HS502/yl02706/frame_finder/roberta_seq.py roberta-base /user/HS502/yl02706/frame_finder/data/vua

python3 frame_finder/roberta_seq.py roberta-base data/VUA20


nohup python3 frame_finder/roberta_seq.py roberta-base data/VUA20 &