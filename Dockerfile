FROM ubuntu:latest
MAINTAINER Jason Meridth <jmeridth@gmail.com>
ENV REFRESHED_AT 2016-03-12

USER root

# Update 
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git vim curl zsh -y

# set shell to zsh
chsh -s /bin/zsh

# Setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV EDITOR vim

ENV CURRENT_USER jmeridth 
# Setup User
RUN useradd --home /home/$CURRENT_USER -M worker -K UID_MIN=10000 -K GID_MIN=10000 -s /bin/zsh
RUN mkdir /home/$CURRENT_USER
RUN chown $CURRENT_USER:$CURRENT_USER /home/$CURRENT_USER
RUN adduser $CURRENT_USER sudo
RUN echo '$CURRENT_USER ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER $CURRENT_USER

ENV RUBY_VERSION 2.3.0

# Install RVM
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c 'source ~/.rvm/scripts/rvm'

# Install Ruby
RUN /bin/bash -l -c 'rvm requirements'
RUN /bin/bash -l -c 'rvm install $RUBY_VERSION'
RUN /bin/bash -l -c 'rvm use $RUBY_VERSION --default'
RUN /bin/bash -l -c 'rvm rubygems current'

# Install bundler
RUN /bin/bash -l -c 'gem install bundler --no-doc --no-ri'
