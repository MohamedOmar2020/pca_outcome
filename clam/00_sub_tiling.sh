#! /bin/bash -l
#SBATCH --partition=scu-cpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=25
#SBATCH --job-name=tiling_pca
#SBATCH --time=24:00:00
#SBATCH --mem=100G
##SBATCH --gres=gpu:2

source ~/.bashrc

conda activate /home/mao4005/.conda/envs/clam
#python code/ImageProcessing.py

python clam/create_patches_fp.py --source data/TCGA/prad --save_dir data/tiles_clam_256_new --patch_size 256 --seg --patch --stitch --preset pca_new.csv 


