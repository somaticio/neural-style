#!/bin/bash
if [ -f /home/ubuntu/.profile ]; then
 . /home/ubuntu/.profile
#else
#  echo "warning .profile doesnt exist"
fi
if [ -f /home/ubuntu/.bashrc ]; then
 . /home/ubuntu/.bashrc
#else
#  echo "warning .bashrc doesnt exist"
fi
cd /home/ubuntu/experiment
#/home/ubuntu/torch/install/bin/th /home/ubuntu/neural-style/neural_style.lua -gpu 3 -print_iter 1 -style_image /home/ubuntu/neural-style/examples/inputs/escher_sphere.jpg -content_image /home/ubuntu/neur
OUTPUT="$(date +%s)"
/home/ubuntu/torch/install/bin/th /home/ubuntu/experiment/neural_style.lua -output_image /home/ubuntu/$OUTPUT.jpg $@ >> /home/ubuntu/logs 2>&1
#/home/ubuntu/torch/install/bin/th /home/ubuntu/experiment/neural_style.lua -gpu 0 -print_iter 1 -num_iterations 10 -style_image /home/ubuntu/experiment/examples/inputs/escher_sphere.jpg -content_image $1 -output_image "/home/ubuntu/$OUTPUT.jpg"   > /dev/null 2>&1
echo /home/ubuntu/$OUTPUT.jpg
