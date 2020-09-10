onnx : 
	python test.py \
			--dataroot datasets/toonify/ \
			--name toonify-512 \
			--loadSize 512 \
			--checkpoints_dir /home/justin/gdrive/gan/results/pix2pixhd/toonify/checkpoints/ \
			--label_nc 0 \
			--no_instance \
			--which_epoch latest \
			--export_onnx model.onnx

validation:
	python test.py \
			--dataroot datasets/toonify/ \
			--name toonify-512 \
			--loadSize 512 \
			--checkpoints_dir checkpoints/ \
			--label_nc 0 \
			--no_instance \
			--which_epoch 80 \
			--results_dir results/validation