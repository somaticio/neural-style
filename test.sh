#!/bin/bash
if [ -f /home/ubuntu/.profile ]; then
 . /home/ubuntu/.profile
else
  >&2 echo "warning .profile doesnt exist"
fi
if [ -f /home/ubuntu/.bashrc ]; then
 . /home/ubuntu/.bashrc
else
  >&2 echo "warning .bashrc doesnt exist"
fi
cd /home/ubuntu/experiment
OUTPUT="/data/output/$(date +%s).jpg"
: ${GPUID:=-1}
/home/ubuntu/torch/install/bin/th /home/ubuntu/experiment/neural_style.lua  -gpu $GPUID $@ -output_image "$OUTPUT" >> /home/ubuntu/logs 2>&1
echo $OUTPUT
