# SLURM sbatch Scripts

Scripts for sbatch when working on High Performance Clusters

* ipynb.sh is sbatch script for starting up iPython notebook. The head node will dispatch the job specified in your script or will automatically assign you a compute note. The output file will have information about the IP address as well as port
* tensorboard.sh is sbatch script for connecting a tensorboard on HPC
* Get bash session on compute node with sun
`srun --job-name=DEBUG --gres=gpu:1 --mem=32G -C K20 -I -N 1 -c 1 --pty -t 0-00:05 /bin/bash`
