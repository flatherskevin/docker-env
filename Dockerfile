from centos:centos7.9.2009

RUN yum update -y
RUN yum install -y vim-enhanced
RUN adduser flathers
RUN echo flathers:flathers | chpasswd
