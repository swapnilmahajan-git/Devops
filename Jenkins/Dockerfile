FROM ubuntu:16.04
RUN apt-get update &&\
    apt-get install -y openssh-server &&\
    apt-get install -y vim &&\
    apt-get install -y sudo

RUN useradd -m -d /home/server1 -s /bin/bash server1
RUN echo "server1:server1" | chpasswd
RUN sed -i '21i server1    ALL=(ALL:ALL) ALL' /etc/sudoers
