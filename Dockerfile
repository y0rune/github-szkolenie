# Dockerfile
FROM --platform=linux/amd64 ubuntu:23.04
RUN apt-get update && apt-get install -y openssh-server vim git nano iproute2
RUN echo 'root:ZSLgit2023!!' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
