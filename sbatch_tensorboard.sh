#!/bin/sh
#SBATCH -N 1
#SBATCH -J  TENSORBOARD #Replace with desired job name 
#SBATCH -t 04:00:00 #Replace with desired run time
#SBATCH -o TENSORBOARD.out #Replace with desired output file name
#SBATCH -e TB_STD_ERR.err #Replace with desired standard output file name
#SBATCH --mem 4G #Replace with desired memory allocation size

source /home/<YOUR USERNAME>/.bash_profile
MODEL_DIR=/work/<YOUR USERNAME>/tensor_board/cifar #Replace with tensorboard model directory

ipnport=$(shuf -i8000-9999 -n1)
echo ipnport=$ipnport

ipnip=$(hostname -i)
echo ipnip=$ipnip

echo "ssh -N -L $ipnport:$ipnip:$ipnport $USER@$SLURM_SUBMIT_HOST"
tensorboard --logdir="${MODEL_DIR}" --port=$ipnport
