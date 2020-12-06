FROM centos:latest

# General Setup
RUN yum update -y

# Tools
RUN yum install -y unzip

# Git
RUN yum install -y git
RUN mkdir /root/codebase
RUN git clone https://github.com/flatherskevin/docker-env.git /root/codebase/docker-env

# zsh
RUN yum install -y zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ADD ./.zshrc /root/.zshrc
ADD ./flathers.zsh-theme /root/.oh-my-zsh/custom/themes/flathers.zsh-theme
RUN usermod --shell /bin/zsh root

# VIM
RUN yum install -y vim-enhanced
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
ADD ./.vimrc /root/
RUN [ "/bin/bash", "-c", "vim -T dumb -n -i NONE -es -S <(echo -e 'silent! PluginInstall')" ]
RUN mkdir /root/.vim/tmp

# Python
RUN yum install -y python3
RUN pip3 install virtualenv

# AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

RUN yum install -y dos2unix
RUN find /root/ -print0| xargs -0 dos2unix

CMD [ "zsh" ]
