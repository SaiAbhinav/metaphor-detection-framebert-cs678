python main.py --data_dir data_all/VUA18 --task_name vua --model_type CLS_SPV_MIP --class_weight 3 --bert_model roberta-base --num_train_epoch 3 --train_batch_size 32 --learning_rate 3e-5 --warmup_epoch 2

nohup python3 main.py --data_dir data_all/VUA18 --task_name vua --model_type FrameMelbert --class_weight 3 --bert_model roberta-base --num_train_epoch 3 --train_batch_size 32 --learning_rate 3e-5 --warmup_epoch 2 > output_2.txt &

python3 main.py --data_dir data_all/VUA18 --task_name vua --model_type FrameMelbert --class_weight 3 --bert_model roberta-base --num_train_epoch 3 --train_batch_size 32 --learning_rate 3e-5 --warmup_epoch 2