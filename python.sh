#!/bin/bash


echo -e "\n\n\n ***************************************************  INSTALANDO  PYTHON 3.11 ********************************************************"

## Instalando Python 3.11
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update -y
sudo apt install python3.11 -y

## Adicionando como alternativa o Python 3.10 e o 3.11
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 2

## Escolhendo a versao do Python
sudo update-alternatives --config python3

## Mostrando versao do Python escolhida
python3 -V

echo "***********************************************************************************************************************************************"
