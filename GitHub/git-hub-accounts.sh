#!/bin/bash


## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



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

cd ~/.ssh

## Configurando conta luc-git-projects
ssh-keygen -t rsa -C "luc.git.projects@hotmail.com" -f "luc-git-projects"
gedit ~/.ssh/luc-git-projects.pub
ssh-add ~/.ssh/luc-git-projects

cd ~/.ssh

## Configurando conta lucgithub343
ssh-keygen -t rsa -C "luc.github@hotmail.com" -f "lucgithub343"
gedit ~/.ssh/lucgithub343.pub
ssh-add ~/.ssh/lucgithub343
