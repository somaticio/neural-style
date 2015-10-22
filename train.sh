#!/bin/bash
. /home/ubuntu/.bashrc
. /home/ubuntu/.profile
cd /home/ubuntu/neural-style
/home/ubuntu/torch/install/bin/th /home/ubuntu/neural-style/neural_style.lua -gpu 0 -print_iter 1