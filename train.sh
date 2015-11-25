#!/bin/bash
. /home/ubuntu/.bashrc
. /home/ubuntu/.profile
cd /home/ubuntu/experiment
/home/ubuntu/torch/install/bin/th /home/ubuntu/experiment/neural_style.lua -gpu 0 -print_iter 1
