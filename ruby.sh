#!/bin/bash


echo -e "\n\n\n*********************************************** INSTALANDO  RUBY  E  RUBY  ON  RAILS**************************************************"

sudo apt update -y

sudo apt install curl \
g++ \
gcc \
autoconf \
automake \
bison \
libc6-dev \
libffi-dev \
libgdbm-dev \
libncurses5-dev \
libsqlite3-dev \
libtool \
libyaml-dev \
make \
pkg-config \
sqlite3 \
zlib1g-dev \
libgmp-dev \
libreadline-dev \
libssl-dev -y

gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm list known

echo "Digite a versao selecionada: "
read opcao

rvm install ruby-$opcao

source ~/.rvm/scripts/rvm

rvm --default use ruby-$opcao

gem install rails

source ~/.rvm/scripts/rvm

echo "***********************************************************************************************************************************************"
