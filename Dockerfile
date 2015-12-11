FROM somatic/cuda
RUN git clone https://xx993e65f591708d4a3ed33e675dd3c019d4e25f82@github.com/somaticio/neural-style /home/ubuntu/experiment
#ADD * /home/ubuntu/experiment/    <--- this should work,its a bug with docker https://github.com/docker/docker/issues/18396
ADD .docker-experimentconfig /home/ubuntu/experiment/.experimentconfig
RUN cd /home/ubuntu/experiment && git pull #use this to force an update
RUN cd /home/ubuntu/somaticagent/ && git pull
RUN python /home/ubuntu/somaticagent/web.py -i
