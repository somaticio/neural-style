#!/bin/bash
cd /home/ubuntu/neural-style
/home/ubuntu/torch/install/bin/th /home/ubuntu/neural-style/neural_style.lua -gpu 0 -backend cudnn -style_image /home/ubuntu/neural-style/examples/inputs/escher_sphere.jpg -content_image /home/ubuntu/neural-style/examples/inputs/brad_pitt.jpg -output_image /home/ubuntu/neural-style/somatic/test