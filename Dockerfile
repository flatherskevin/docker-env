from centos:centos7.9.2009

RUN yum update -y
RUN yum install -y vim-enhanced
RUN adduser flathers
RUN echo flathers:flathers | chpasswd
RUN mkdir /home/flathers/.vim && mkdir /home/flathers/.vim/tmp
ADD ./.vimrc /home/flathers/
RUN mkdir /home/flathers/codebase
RUN git clone https://github.com/flatherskevin/docker-env.git /home/flathers/codebase
