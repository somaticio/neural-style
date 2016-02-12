FROM somatic/cuda
#FROM kaixhin/cuda-torch
ENV DEBIAN_FRONTEND noninteractive  
RUN git clone https://github.com/somaticio/neural-style /home/ubuntu/experiment
RUN apt-get install -y libpython-dev libpython2.7-dev python-dev python2.7-dev python-pip python-virtualenv python-argparse python-software-properties
RUN apt-get install -y libprotobuf-dev protobuf-compiler
RUN /home/ubuntu/torch/install/bin/luarocks install loadcaffe
RUN pip install boto flask jinja2 markupsafe werkzeug futures itsdangerous requests wsgiref pyyaml py-cpuinfo
RUN cd /home/ubuntu/ && wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
RUN cd /home/ubuntu &&  dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y opencl-headers build-essential protobuf-compiler \
    libprotoc-dev libboost-all-dev libleveldb-dev hdf5-tools libhdf5-serial-dev \
    libopencv-core-dev  libopencv-highgui-dev libsnappy-dev libsnappy1 \
    libatlas-base-dev cmake libstdc++6-4.8-dbg libgoogle-glog0 libgoogle-glog-dev \
    libgflags-dev liblmdb-dev git python-pip gfortran
RUN apt-get clean
RUN apt-get install -y linux-image-extra-`uname -r` linux-headers-`uname -r` linux-image-`uname -r`
RUN apt-get install -y cuda

RUN /home/ubuntu/torch/install/bin/luarocks install cutorch
RUN /home/ubuntu/torch/install/bin/luarocks install cunn
RUN /home/ubuntu/torch/install/bin/luarocks install nn


#ADD * /home/ubuntu/experiment/    <--- this should work,its a bug with docker https://github.com/docker/docker/issues/18396
ADD .docker-experimentconfig /home/ubuntu/experiment/.experimentconfig
RUN cd /home/ubuntu/experiment && git pull #use this to force an update
