FROM ubuntu:latest
RUN apt update
RUN apt install openssh-server sudo -y
RUN apt install curl sudo -y
RUN apt install vim sudo -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 USERNAME
RUN usermod -aG sudo USERNAME
RUN service ssh start
RUN echo "USERNAME:PASSWORD" | chpasswd
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
