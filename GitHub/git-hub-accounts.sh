#!/bin/bash

## Function to create account lucotavio
creating_account-lucotavio(){

  echo "#lucotavio account" | tee  ~/.ssh/config
  echo "Host github.com-lucotavio" | tee -a ~/.ssh/config
  echo "     HostName github.com" | tee -a ~/.ssh/config
  echo "     User git" | tee -a ~/.ssh/config
  echo "     IdentityFile ~/.ssh/lucotavio" | tee -a ~/.ssh/config

  ## Creating empty space between accounts
  echo "" | tee -a ~/.ssh/config

}



## Function to create account lucgithub343
creating_account_lucgithub343(){

  echo "#lucgithub343 account" | tee -a ~/.ssh/config
  echo "Host github.com-lucgithub343" | tee -a ~/.ssh/config
  echo "     HostName github.com" | tee -a ~/.ssh/config
  echo "     User git" | tee -a ~/.ssh/config
  echo "     IdentityFile ~/.ssh/lucgithub343" | tee -a ~/.ssh/config

}



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
    echo "Criando o arquivo config na pasta ~/.ssh/"

    ## Calling function
    creating_account-lucotavio

    ## Calling function
    creating_account_lucgithub343
fi



## Configurando conta lucotavio
if [ -e ~/.ssh/lucotavio ];
then
    echo "O arquivo  ~/.ssh/lucotavio  ja existe"
else
    ssh-add -K ~/.ssh/lucotavio
    gedit ~/.ssh/lucotavio.pub
    ssh-add -k ~/.ssh/lucotavio
fi



## Configurando conta lucgithub343
if [ -e ~/.ssh/lucgithub343 ];
then
    echo "O arquivo  ~/.ssh/lucgithub343  ja existe"
else
    ssh-add -K ~/.ssh/lucgithub343
    gedit ~/.ssh/lucgithub343.pub
    ssh-add -k ~/.ssh/lucgithub343
fi
