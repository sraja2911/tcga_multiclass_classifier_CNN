nvidia-docker run \
     -it --rm -p7777:8888 \
     -v "${PWD}:/app:rw" \
     -v "/home/raj/github/tcga_multiclass_classifier_CNN/code:/data/code:rw" \
     -v "/home/raj/github/tcga_multiclass_classifier_CNN/results:/data/output/results:rw" \
     -v "/media/raj/Raj1_5/100k_tiles_data/train:/data/train:rw" \
     -v "/media/raj/Raj1_5/100k_tiles_data/test:/data/test:rw" \
     fgiuste/histomicstk