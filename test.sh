#!/bin/bash
. /home/ubuntu/.profile
. /home/ubuntu/.bashrc
cd /home/ubuntu/experiment
#/home/ubuntu/torch/install/bin/th /home/ubuntu/neural-style/neural_style.lua -gpu 3 -print_iter 1 -style_image /home/ubuntu/neural-style/examples/inputs/escher_sphere.jpg -content_image /home/ubuntu/neur
/home/ubuntu/torch/install/bin/th /home/ubuntu/neural-style/neural_style.lua -gpu 0 -print_iter 1 -style_image /home/ubuntu/neural-style/examples/inputs/escher_sphere.jpg -content_image $1 -output_image /home/ubuntu/output.jpg
echo /home/ubuntu/output.jpg
