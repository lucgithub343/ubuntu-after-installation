#!/bin/bash


## Entrando na para pasta de programas
cd /home/$USER/Downloads/Softwares/


echo -e "\n\n******************************************** INSTALANDO  IMPRESSORA  CANON *************************************************************"

## https://th.canon/en/support/PIXMA%20G3010/model
## Download Driver Impressora
echo -e "\n\n\n Driver Impressora"
if [ -d /impressora-Canon-G-3110-deb ];
then
  cd impressora-Canon-G-3110-deb/
  chmod +x install.sh
  sudo ./install.sh
else
    wget https://github.com/lucotavio/impressora-canon/releases/download/impressora-canon/impressora-Canon-G-3110-deb.tar.gz
    descompactar-tar-gz impressora-Canon-G-3110-deb.tar.gz
    cd impressora-Canon-G-3110-deb/
    chmod +x install.sh
    sudo ./install.sh
fi

## Entrando na para pasta de Software
cd /home/$USER/Downloads/Softwares/

echo -e "\n\n****************************************************************************************************************************************"




echo -e "\n\n\n *************************************  INSTALANDO  SPRING TOOLS  SUITE  COM  LOMBOK **************************************************"

## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

## Spring tool Suite
sudo dpkg -i spring-tool-suite-4.20.0.RELEASE.deb
sudo apt --fix-broken install -y

## Instalando Lombok no Spring Tools Suite
chmod +x lombok.jar
sudo java -jar lombok.jar

## Removendo o arquivo .eclipseproduct
## sudo rm /.eclipseproduct

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************INSTALANDO  VMWARE  PLAYER *********************************************************"

chmod +x VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle

## Dependencias do VMware
sudo apt update -y
sudo apt install build-essential -y
sudo apt install manpages-dev  -y

## Instalando VMware
sudo ./VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle

## Alterando icone  do VMware
## sudo mkdir /opt/vmware-icon/
## sudo cp vmware.png /opt/vmware-icon/
## sudo sed -i 's\vmware-player\/opt/vmware-icon/vmware.png\g' /usr/share/applications/vmware-player.desktop

## Abrindo o VMware player via terminal
vmware

## Consertando o problema de 3d não suportado
if grep -qi 'mks.gl.allowBlacklistedDrivers = "TRUE"' /home/$USER/.vmware/preferences;
then
    echo "VMWare ja configurado"
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> /home/$USER/.vmware/preferences
fi

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n********************************* INSTALANDO  DRIVER  DE  VIDEO  E  INSTALANDO  LIVEPATCH*********************************************"


while true
do
    echo -e "\n\nDigite opção 1 ou 2 ou 3"
    echo "1 - DESKTOP"
    echo "2 - NOTEBOOK PESSOAL"
    echo "3 - NOTEBOOK EMPRESA"

    echo "Digite a opção: "
    read opcao

    sudo apt update -y
    sudo ubuntu-drivers devices
    sudo apt install -y ubuntu-advantage-tools

    if [ $opcao -eq 1 ];
    then
        echo -e "\n\n*************************************DESKTOP *****************************************************"

        sudo apt install -y nvidia-driver-390
        sudo ua attach C1NN7PA4J2HtxnsvSiTUPEs5bUU7Y

        echo -e "\n\n**************************************************************************************************"
        break
    elif [ $opcao -eq 2 ];
    then
        echo -e "\n\n*********************************** NOTEBOOK LUCIANO *********************************************"

        sudo apt install -y nvidia-driver-525
        sudo ua attach C1x3zxz1GFawrD8EY4oT7RsxsEfH1

        echo -e "\n\n**************************************************************************************************"
        break
    elif [ $opcao -eq 3 ];
    then
        echo -e "\n\n********************************* NOTEBOOK EMPRESA ***********************************************"

        sudo ua attach C12Jp442FKeioyspXdSyrbG9aHn9hw

        echo -e "\n\n**************************************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "***********************************************************************************************************************************************"




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




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *****************************************************"

flatpak install flathub org.gnome.Solanum -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub org.chromium.Chromium -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb


## 4K Video Downloader
sudo dpkg -i 4kvideodownloader_4.21.7-1_amd64.deb
sudo apt --fix-broken install -y


## Android Studio
sudo dpkg -i android-studio-2022.3.1.deb
sudo apt --fix-broken install -y


## Atom
sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F --in-process-gpu\g' /usr/share/applications/atom.desktop


## Balena Etcher
sudo dpkg -i balena-etcher_1.18.11_amd64.deb
sudo apt --fix-broken install -y


## Chrome
sudo dpkg -i chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## CLion
sudo dpkg -i clion-2023.2.2.deb
sudo apt --fix-broken install -y


## DataGrip
sudo dpkg -i data-grip-2023.2.1.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-le_23.2.0_amd64.deb
sudo apt --fix-broken install -y


## Firefox
sudo dpkg -i firefox-116.0.2.deb
sudo apt --fix-broken install -y


## GitKraken
sudo dpkg -i gitkraken-amd64.deb
sudo apt --fix-broken install -y


## Insomnia
sudo dpkg -i Insomnia.Core-2023.5.8.deb
sudo apt --fix-broken install -y


## Insync
sudo dpkg -i insync_3.8.6.50504-mantic_amd64.de
sudo apt --fix-broken install -y


## Intellij Ultimate
sudo dpkg -i intellij-ultimate-2023-2-2.deb
sudo apt --fix-broken install -y


## Japersoft studio
sudo dpkg -i jaspersoft-sudio-6.20.0_linux_amd64.deb
sudo apt --fix-broken install -y


## Kdenlive
sudo dpkg -i kdenlive-22.12.1.deb
sudo apt --fix-broken install -y


## Mega
sudo dpkg -i megasync-xUbuntu_22.04_amd64.deb
sudo apt --fix-broken install -y


## Microsoft Edge
sudo dpkg -i microsoft-edge-stable_117.0.2045.47-1_amd64.deb
sudo apt --fix-broken install -y


## MySql Workbench
sudo dpkg -i mysql-workbench-community_8.0.34-1ubuntu22.04_amd64.deb
sudo apt --fix-broken install -y


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i '/Terminal=false/a StartupWMClass=DesktopEditors' /usr/share/applications/onlyoffice-desktopeditors.desktop


## Postman
sudo dpkg -i postman-10.18.5.deb
sudo apt --fix-broken install -y


## Pycharm
sudo dpkg -i pycharm-2023.2.1.deb
sudo apt --fix-broken install -y


## RubyMine
sudo dpkg -i ruby-mine-2023.2.3.deb
sudo apt --fix-broken install -y


## Star UML
sudo dpkg -i StarUML_5.1.0_amd64.deb
sudo apt --fix-broken install -y


## Visual Studio Code
sudo dpkg -i visual_studio_code_1.82.2-1694671812_amd64.deb
sudo apt --fix-broken install -y


## WebStorm
sudo dpkg -i web-storm-2023-2-2.deb
sudo apt --fix-broken install -y



############################################################## INSTALANDO  APACHE  NETBEANS #########################################################

## Apache Netbeans
sudo dpkg -i apache-netbeans_19-1_all.deb
sudo apt --fix-broken install -y


## Baixando repositorio Classes do Git Hub
if [ -d /home/$USER/.netbeans/19/config/Templates/Classes/ ];
then
    echo "O diretorio  /home/$USER/.netbeans/18/config/Templates/Classes/  ja existe"
else

  ## Criando a pasta onde vao ficar os templates modificados
  mkdir -p /home/$USER/.netbeans/19/config/Templates/

  echo -e "\n\n\n\n Clonando repositorio Classes do Git Hub"
  git clone https://github.com/lucotavio/Classes.git
  cp -r Classes/ /home/$USER/.netbeans/19/config/Templates/
fi

########################################################## FIM DA  INSTALACAO  DO  APACHE  NETBEANS##################################################


echo "***********************************************************************************************************************************************"




## Atualizando a maneira de atualizar as keys dos repositorio sao salva
sudo cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove -y


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
