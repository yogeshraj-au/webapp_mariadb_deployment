FROM centos:centos7

RUN yum install -y http://mirror.centos.org/centos/7/extras/x86_64/Packages/sshpass-1.06-2.el7.x86_64.rpm
RUN yum update -y && yum install -y openssh-server net-tools python3 bind-utils
COPY systemctl.py /usr/bin/systemctl
RUN chmod a+x /usr/bin/systemctl
RUN mkdir /var/run/sshd
RUN echo 'root:Passw0rd' | chpasswd

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Generating rsa keypair
RUN /usr/bin/ssh-keygen -A

# Removing nologin messsage
RUN rm -rf /run/nologin

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
