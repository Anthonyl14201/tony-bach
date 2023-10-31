#!/bin/bash

mkdir cocochorales_tiny_v1_zipped
cd cocochorales_tiny_v1_zipped

# download md5
wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/cocochorales_md5s.txt

# download main dataset for training
mkdir main_dataset
mkdir main_dataset/train
for i in 1 2 3 25 26 27 49 50 51 73 74 75; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/main_dataset/train/"$i".tar.bz2 -P main_dataset/train
done

# download metadata for training
mkdir metadata
mkdir metadata/train
for i in 1 2 3 25 26 27 49 50 51 73 74 75; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/metadata/train/"$i".tar.bz2 -P metadata/train
done

# download f0 for training
mkdir f0
mkdir f0/train
for i in 1 2 3 25 26 27 49 50 51 73 74 75; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/f0/train/"$i".tar.bz2 -P f0/train
done

# download note expression for training
mkdir note_expression
mkdir note_expression/train
for i in 1 2 3 25 26 27 49 50 51 73 74 75; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/note_expression/train/"$i".tar.bz2 -P note_expression/train
done

# download synthesis parameters for training
mkdir synthesis_parameters
mkdir synthesis_parameters/train
for i in 1 2 3 25 26 27 49 50 51 73 74 75; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/synthesis_parameters/train/"$i".tar.bz2 -P synthesis_parameters/train
done

# download main dataset for testing
mkdir main_dataset/test
for i in 1 4 7 10; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/main_dataset/test/"$i".tar.bz2 -P main_dataset/test
done

# download metadata for testing
mkdir metadata/test
for i in 1 4 7 10; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/metadata/test/"$i".tar.bz2 -P metadata/test
done

# download f0 for testing
mkdir f0/test
for i in 1 4 7 10; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/f0/test/"$i".tar.bz2 -P f0/test
done

# download note expression for testing
mkdir note_expression/test
for i in 1 4 7 10; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/note_expression/test/"$i".tar.bz2 -P note_expression/test
done

# download synthesis parameters for testing
mkdir synthesis_parameters/test
for i in 1 4 7 10; do
  wget https://storage.googleapis.com/magentadata/datasets/cocochorales/cocochorales_full_v1_zipped/synthesis_parameters/test/"$i".tar.bz2 -P synthesis_parameters/test
done
