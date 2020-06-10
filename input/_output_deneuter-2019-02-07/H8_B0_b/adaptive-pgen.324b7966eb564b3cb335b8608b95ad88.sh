#!/bin/bash
#SBATCH -c 4
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -p campus
#SBATCH -o job_%j.out
#SBATCH -e job_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=matsen@fredhutch.org
# The following are commented out because of a conda issue https://github.com/ContinuumIO/anaconda-issues/issues/8838
# set -eu
# set -o pipefail
hostname
source activate py36
cd /home/matsen/re/vampire/vampire
mkdir -p /mnt/beagle/delete10/matsen_e/vampire/uuid/324b7966eb564b3cb335b8608b95ad88
cp pipe_main/_output_deneuter-2019-02-07/H8_B0_b/H8_B0_b.head.csv /mnt/beagle/delete10/matsen_e/vampire/uuid/324b7966eb564b3cb335b8608b95ad88/H8_B0_b.head.csv
adaptive-pgen.sh /mnt/beagle/delete10/matsen_e/vampire/uuid/324b7966eb564b3cb335b8608b95ad88/H8_B0_b.head.csv pipe_main/_output_deneuter-2019-02-07/H8_B0_b/test-head.pgen.tsv
touch pipe_main/_output_deneuter-2019-02-07/H8_B0_b/sentinel.324b7966eb564b3cb335b8608b95ad88
