# Tile level classifier - CNN classifier for Tiles generated from WSI slides 

A multi classes image classifier, based on convolutional neural network (CNN) using Keras and Tensorflow. 

A multi-label classifier (having one fully-connected layer at the end), with multi-classification (2 classes, in this instance)
Largely copied from the code https://github.com/kallooa/MSDA_Capstone_Final/tree/master/3_Model_Training/Tile_Level_Model_Training

Classifying 2 cancer types (LGG, GBM tiles generated from around 1200 WSI slides) downloaded from candygram.emory.edu

Thumbnail extraction and tile extraction from WSI slides are implemented using Girder Calls and HistomicsTK functions (https://girder.readthedocs.io/en/latest/)

Used Keras.ImageDataGenerator for Training/Validation data augmentation and the augmented images are flown from respective directory

train folder has training images and validation images which are autogenerated by keras has val images with cross-validation ratio of 80-20 (train-val)  

test folder has all test images 

Environment: A docker container having Keras, TensorFlow, Python-3 with GPU based execution

After !pip install nvidia-ml-py3 --user
# Restart the kernel and execute the remaining steps 

Model in use is, Google Inception V3 with image size 150*150

Number of FCNs (Fully Connected Networks) - starting from 1024 to 100000, vary between models
Initially only two cancer classes lgg and GBM and is extending to another 25 cancer classes like BRCA etc
