#!/bin/bash


## Entrando na para pasta de programas
cd /home/$USER/Downloads/Softwares/



## Testando para ver se o diretorio  ~/.ssh/  existe
if [ -d ~/.ssh/ ];
then
    echo "O diretorio  ~/.ssh/  ja existe"
else
    echo "Criando o diretorio  ~/.ssh/"
    mkdir -p ~/.ssh/
fi



## Testando para ver se o arquivo  ~/.ssh/config  ja existe
if [ -e ~/.ssh/config ];
then
    echo "O arquivo  ~/.ssh/config  ja existe"
else
    echo "Copiando o arquivo config para pasta ~/.ssh/"
    git clone https://github.com/lucgithub343/git-hub-accounts.git
    cd git-hub-accounts/
    cp config ~/.ssh/
fi



## Configurando conta lucotavio
ssh-add -K ~/.ssh/lucotavio
gedit ~/.ssh/lucotavio.pub
ssh-add -k ~/.ssh/lucotavio



## Configurando conta lucgithub343
ssh-add -K ~/.ssh/lucgithub343
gedit ~/.ssh/lucgithub343.pub
ssh-add -k ~/.ssh/lucgithub343
