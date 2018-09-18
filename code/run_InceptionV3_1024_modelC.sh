nvidia-docker run \
     -it --rm -p1111:8888 \
     -v "${PWD}:/app:rw" \
     -v "/home/raj/github/tcga_cancer_ml_classifier/python:/data/code:rw" \
     -v "/home/raj/github/tcga_cancer_ml_classifier/python/results:/data/output/results:rw" \
     -v "/media/raj/Raj1_5/5k_tiles_data/train:/data/train:rw" \
     -v "/media/raj/Raj1_5/5k_tiles_data/test:/data/test:rw" \
     fgiuste/neuroml:V3
