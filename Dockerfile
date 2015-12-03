FROM somatic/cuda
RUN git clone https://xx993e65f591708d4a3ed33e675dd3c019d4e25f82@github.com/somaticio/neural-style /home/ubuntu/experiment
#ADD * /home/ubuntu/experiment/    <--- this should work,its a bug with docker https://github.com/docker/docker/issues/18396
RUN cd /home/ubuntu/somaticagent/ && git pull
ADD .docker-experimentconfig /home/ubuntu/experiment/.experimentconfig
RUN python /home/ubuntu/somaticagent/web.py -i
