#!/bin/bash



## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir -p /home/$USER/Downloads/Softwares/

## Criando diretorio .icons
mkdir -p /home/$USER/.icons/

## Criando diretorio .themes
mkdir -p /home/$USER/.themes/

## Criando diretorio Temp
mkdir -p /home/$USER/Temp/

## Criando diretorio do OBS Studio
mkdir -p /home/$USER/Videos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p /home/$USER/Installation/ISO/

## Criando diretorio Script dentro da pasta InstallationF/usr/-
mkdir -p /home/$USER/Installation/Script/



## Entrando na para pasta de programas
cd /home/$USER/Downloads/Softwares/



## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Templates/TXT.txt ];
then
    echo "O arquivo  TXT.txt  ja existe"
else
    touch /home/$USER/Templates/TXT.txt
fi


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Templates/shell-script.sh ];
then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch /home/$USER/Templates/shell-script.sh
    echo "#!/bin/bash" > /home/$USER/Templates/shell-script.sh
fi


## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Templates/SQL.sql ];
then
    echo "O arquivo  SQL.sql  ja existe"
else
    touch /home/$USER/Templates/SQL.sql
fi


## Criando modelo de arquivo xml
if [ -e /home/$USER/Templates/XML.xml ];
then
    echo "O arquivo  XML.xml  ja existe"
else
    touch /home/$USER/Templates/XML.xml
fi


## Criando modelo de arquivo java
if [ -e /home/$USER/Templates/JAVA.java ];
then
    echo "O arquivo  JAVA.java  ja existe"
else
    touch /home/$USER/Templates/JAVA.java
fi


## Criando modelo de arquivo yml
if [ -e /home/$USER/Templates/YML.yml ];
then
    echo "O arquivo  YML.yml  ja existe"
else
    touch /home/$USER/Templates/YML.yml
fi




echo -e "\n\n\n********************************************** INSTALANDO  RESTRICTED  EXTRAS*********************************************************"

sudo apt install ubuntu-restricted-extras -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* INSTALANDO  COMPACTADORES  E  DESCOMPACTADORES  ************************************************"

## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install sharutils -y
sudo apt install p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************** INSTALANDO  COMANDO  CURL *************************************************************"

sudo apt install curl -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo apt update -y
sudo apt install git -y
## git config --global credential.helper store

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************************* MISCELANIA *******************************************************************"

## Download Compactador
if [ -e compactar-tar-gz ];
then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Compactador-tar-gz"
    wget https://github.com/lucgithub343/compactador-descompactador/releases/download/compactador-descompactador/compactar-tar-gz

    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi



## Download Descompactar
if [ -e descompactar-tar-gz ];
then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Descompactar-tar-gz"
    wget https://github.com/lucgithub343/compactador-descompactador/releases/download/compactador-descompactador/descompactar-tar-gz

    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi



## Download plugin LanguageTool para o OnlyOffice
if [ -e languagetool.plugin ];
then
    echo "O arquivo  languagetool.plugin  ja existe"
else
    echo -e "\n\n\n Plugin Language Tool para o OnlyOffice"
    wget https://github.com/lucgithub343/language-tool/releases/download/language-tool/languagetool.plugin
fi



## Download Netbeans plugins
if [ -d /home/$USER/Installation/netbeans-plugins ];
then
    echo "O diretorio  /home/$USER/Installation/netbeans-plugins  ja existe"
else
    echo -e "\n\n\n\n Netbeans Plugins"
    git clone https://github.com/lucotavio/netbeans-plugins.git
    cp -r netbeans-plugins /home/$USER/Installation/
fi



#Download Drivers JDBC
if [ -d /home/$USER/Installation/drivers-JDBC ];
then
    echo "O diretorio  /home/$USER/Installation/drivers-JDBC  ja existe"
else
    echo -e "\n\n\n\n Drivers JDBC"
    git clone https://github.com/lucotavio/drivers-jdbc.git
    cp -r drivers-JDBC /home/$USER/Installation/
fi



## Download Wallpapers
if [ -d /home/$USER/Pictures/wallpaper/ ];
then
    echo "O diretorio  /home/$USER/Pictures/wallpaper  ja existe"
else
    echo -e "\n\n\n\n Wallpapers"
    git clone https://github.com/lucotavio/wallpapers.git
    cp -r wallpapers/ /home/$USER/Pictures/
fi



## Download dos scripts de instalacao do Ubuntu
if [ -d /home/$USER/Installation/Script/ubuntu-after-installation-22-04/ ];
then
    echo "O diretorio  /home/$USER/Installation/Script/ubuntu-after-installation-22-04/  ja existe"
else
    echo -e "\n\n\n\n Scripts de instalacao do Ubuntu 22.04"
    git clone https://github.com/lucotavio/ubuntu-pos-instalacao.git
    mv /home/$USER/Downloads/Softwares/ubuntu-pos-instalacao/  /home/$USER/Installation/Script/ubuntu-after-installation-22-04/
fi



## Download tema WhiteSur Dark solid
if [ -d /home/$USER/.themes/WhiteSur-dark-solid ];
then
    echo "O diretorio  /home/$USER/.themes/WhiteSur-dark-solid  ja existe"
else
    echo -e "\n\n\n\n WhiteSur Dark solid"
    git clone https://github.com/lucotavio/gnome-themes.git
    cp -r /home/$USER/Downloads/Softwares/gnome-themes/WhiteSur-dark-solid/ /home/$USER/.themes/
fi



## Download Gnome Icons
if [ -d /home/$USER/.icons/BigSur ];
then
    echo "O diretorio  /home/$USER/.icons/BigSur  ja existe"
else
    echo -e "\n\n\n\n Gnome Icons"
    git clone https://github.com/lucotavio/gnome-icons.git

    ## Copiando icones do BigSur
    cp -r /home/$USER/Downloads/Softwares/gnome-icons/BigSur/ /home/$USER/.icons/

    ## Copiando icones do Deepin
    cp -r /home/$USER/Downloads/Softwares/gnome-icons/Uos-fulldistro-icons/ /home/$USER/.icons/
fi



## Download MacMojave cursores
if [ -d /home/$USER/.icons/McMojave-cursors ];then
    echo "O diretorio  /home/$USER/.icons/McMojave-cursors  ja existe"
else
  echo -e "\n\n\n\n MacMojave cursores"
  git clone https://github.com/lucotavio/gnome-cursors.git
  cp -r /home/$USER/Downloads/Softwares/gnome-cursors/McMojave-cursors/ /home/$USER/.icons/
fi


## Baixando repositorio Projetos do Git Hub
if [ -d /home/$USER/Projects ];then
    echo "O diretorio  /home/$USER/Projects  ja existe"
else
  echo -e "\n\n\n\n Clonando repositorio Projetos do Git Hub"
  git clone https://github.com/lucotavio/Projetos.git
  mv Projetos/ /home/$USER/Projects
fi


## Download Docker Compose dos bancos de dados
if [ -d /home/$USER/Installation/database-docker-compose/ ];then
    echo "O diretorio  database-docker-compose  ja existe"
else
  echo -e "\n\n\n\n Docker Compose dos bancos de dados"
  git clone https://github.com/lucotavio/database-docker-compose.git

  cp -r /home/$USER/Downloads/Softwares/database-docker-compose/ /home/$USER/Installation/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** DOWNLOAD   DE  PROGRAMAS **********************************************************"

## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ]
then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n 4K Video Downloader"
    wget https://github.com/lucgithub343/4k-video-downloader/releases/download/4k-video-downloader/4kvideodownloader_4.21.7-1_amd64.deb
fi



## Download Android Studio
if [ -e android-studio-2022.3.1.deb ]
then
    echo "O arquivo  android-studio-2022.3.1.deb  ja existe"
else
  echo -e "\n\n\n\n Android Studio"
    wget https://github.com/lucgithub343/android-studio/releases/download/android-studio/android-studio-2022.3.1.deb
fi



## Download Apache Netbeans
if [ -e apache-netbeans_19-1_all.deb ]
then
    echo "O arquivo  apache-netbeans_19-1_all.deb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    wget https://github.com/lucgithub343/apache-netbeans/releases/download/apache-netbeans/apache-netbeans_19-1_all.deb
fi



## Download Atom
if [ -e atom-amd64.deb ]
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    wget https://github.com/lucgithub343/atom/releases/download/atom/atom-amd64.deb
fi



## Download Balena Etcher
if [ -e balena-etcher_1.18.11_amd64.deb ]
then
    echo "O arquivo  balena-etcher_1.18.11_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    wget https://github.com/lucgithub343/balena-etcher/releases/download/balena-etcher/balena-etcher_1.18.11_amd64.deb
fi



## Download Chrome
if [ -e chrome-stable_current_amd64.deb ];
then
    echo "O arquivo  chrome-stable_current_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Chrome"
  wget https://github.com/lucgithub343/chrome/releases/download/chrome/chrome-stable_current_amd64.deb
fi



## Download CLion
if [ -e clion-2023.2.2.deb ];
then
    echo "O arquivo  clion-2023.2.2.deb  ja existe"
else
  echo -e "\n\n\n\n CLion"
  wget https://github.com/lucgithub343/clion/releases/download/clion/clion-2023.2.2.deb
fi



## Download DataGrip
if [ -e data-grip-2023.2.1.deb ];
then
    echo "O arquivo  data-grip-2023.2.1.deb  ja existe"
else
  echo -e "\n\n\n\n DataGrip"
  wget https://github.com/lucgithub343/data-grip/releases/download/data-grip/data-grip-2023.2.1.deb
fi



## Download DBeaver
if [ -e dbeaver-le_23.2.0_amd64.deb ];
then
    echo "O arquivo  dbeaver-le_23.2.0_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n DBeaver"
  wget https://github.com/lucgithub343/dbeaver/releases/download/dbeaver/dbeaver-le_23.2.0_amd64.deb
fi



## Download Dropbox
if [ -e dropbox_2020.03.04_amd64.deb ];
then
    echo "O arquivo  dropbox_2020.03.04_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Dropbox"
  wget https://github.com/lucgithub343/dropbox/releases/download/dropbox/dropbox_2020.03.04_amd64.deb
fi



## Download Firefox
if [ -e firefox-116.0.2.deb ];
then
    echo "O arquivo  firefox-116.0.2.deb  ja existe"
else
  echo -e "\n\n\n\n Firefox"
  wget https://github.com/lucgithub343/firefox/releases/download/firefox/firefox-116.0.2.deb
fi



## Download GitKraken
if [ -e gitkraken-amd64.deb ];
then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
  echo -e "\n\n\n\n GitKraken"
  wget https://github.com/lucgithub343/git-kraken/releases/download/git-kraken/gitkraken-amd64.deb
fi



## Download Insomnia
if [ -e Insomnia.Core-2023.5.8.deb ];
then
    echo "O arquivo  Insomnia.Core-2023.5.8.deb  ja existe"
else
  echo -e "\n\n\n\n Insomnia"
  wget https://github.com/lucgithub343/insomnia/releases/download/insomnia/Insomnia.Core-2023.5.8.deb
fi



## Download Insync
if [ -e insync_3.8.6.50504-jammy_amd64.deb ];
then
    echo "O arquivo  insync_3.8.6.50504-jammy_amd64.deb ja existe"
else
  echo -e "\n\n\n\n Insync"
  wget https://github.com/lucgithub343/insync/releases/download/insync/insync_3.8.6.50504-jammy_amd64.deb
fi



## Download Intellij Ultimate
if [ -e intellij-ultimate-2023-2-2.deb ];
then
    echo "O arquivo  intellij-ultimate-2023-2-2.deb ja existe"
else
  echo -e "\n\n\n\n Intellij Ultimate"
  wget https://github.com/lucgithub343/intellij/releases/download/intellij/intellij-ultimate-2023-2-2.deb
fi


## Download Jasper Studio
if [ -e jaspersoft-sudio-6.20.0_linux_amd64.deb ];
then
    echo "O arquivo  jaspersoft-sudio-6.20.0_linux_amd64.deb ja existe"
else
  echo -e "\n\n\n\n Jasper Studio"
  wget https://github.com/lucgithub343/jaspersoft-studio/releases/download/jaspersoft-studio/jaspersoft-sudio-6.20.0_linux_amd64.deb
fi


## Download Kdenlive
if [ -e kdenlive-22.12.1.deb ];
then
    echo "O arquivo  kdenlive-22.12.1.deb ja existe"
else
  echo -e "\n\n\n\n Kdenlive"
  wget https://github.com/lucgithub343/kdenlive/releases/download/kdenlive/kdenlive-22.12.1.deb
fi



## Download Lombok
if [ -e lombok.jar ];
then
    echo "O arquivo lombok.jar ja existe"
else
  echo -e "\n\n\n\n Lombok"
  wget https://github.com/lucgithub343/lombok/releases/download/lombok/lombok.jar
fi



## Download Microsoft Edge
if [ -e microsoft-edge-stable_116.0.1938.76-1_amd64.deb ];
then
    echo "O arquivo  microsoft-edge-stable_116.0.1938.76-1_amd64.deb ja  existe"
else
  echo -e "\n\n\n\n Microsoft Edge"
  wget https://github.com/lucgithub343/microsoft-edge/releases/download/microsoft-edge/microsoft-edge-stable_116.0.1938.76-1_amd64.deb
fi



## Download MySql Workbench
if [ -e mysql-workbench-community_8.0.34-1ubuntu22.04_amd64.deb ];
then
    echo "O arquivo   mysql-workbench-community_8.0.34-1ubuntu22.04_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n MySql Workbench"
  wget https://github.com/lucgithub343/mysql-workbench/releases/download/mysql-workbench/mysql-workbench-community_8.0.34-1ubuntu22.04_amd64.deb
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];
then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Only Office"
  wget https://github.com/lucgithub343/onlyoffice/releases/download/onlyoffice/onlyoffice-desktopeditors_amd64.deb
fi



## Download Postman
if [ -e postman-10.18.5.deb ];
then
    echo "O arquivo  postman-10.18.5.deb  ja existe"
else
  echo -e "\n\n\n\n Postman"
  wget https://github.com/lucgithub343/postman/releases/download/postman/postman-10.18.5.deb
fi



## Download Pycharm
if [ -e pycharm-2023.2.1.deb ];
then
    echo "O arquivo  pycharm-2023.2.1.deb  ja existe"
else
  echo -e "\n\n\n\n Postman"
  wget https://github.com/lucgithub343/pycharm/releases/download/pycharm/pycharm-2023.2.1.deb
fi



## Download Spring Tool Suite
if [ -e spring-tool-suite-4.20.0.RELEASE.deb ];
then
    echo "O arquivo  spring-tool-suite-4.20.0.RELEASE.deb  ja existe"
else
  echo -e "\n\n\n\n Spring Tool Suite"
  wget https://github.com/lucgithub343/spring-tool-suite/releases/download/spring-tool-suite/spring-tool-suite-4.20.0.RELEASE.deb
fi



## Download StarUML
if [ -e StarUML_5.1.0_amd64.deb ]
then
    echo "O arquivo  StarUML_5.1.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n StarUML"
    wget https://github.com/lucgithub343/starUML/releases/download/starUML/StarUML_5.1.0_amd64.deb
fi




## Download Visual Studio Code
if [ -e visual_studio_code_1.82.2-1694671812_amd64.deb ]
then
    echo "O arquivo  visual_studio_code_1.82.2-1694671812_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Code"
    wget https://github.com/lucgithub343/visual-studio-code/releases/download/visual-studio-code/visual_studio_code_1.82.2-1694671812_amd64.deb
fi



## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle ]
then
    echo "O arquivo  VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle  ja existe"
else
    echo -e "\n\n\n\n VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle
fi



## Download Serial VMware Workstation
if [ -e serial-vmware-workstation.txt ]
then
    echo "O arquivo  serial-vmware-workstation.txt  ja existe"
else
    echo -e "\n\n\n\n Serial VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/serial-vmware-workstation.txt
fi



## Download WebStorm
if [ -e web-storm-2023-2-2.deb ]
then
    echo "O arquivo  web-storm-2023-2-2.deb  ja existe"
else
    echo -e "\n\n\n\n WebStorm"
    wget https://github.com/lucgithub343/web-storm/releases/download/web-storm/web-storm-2023-2-2.deb
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-21 **************************************************************"

if [ -e jdk-21_linux-x64_bin.deb ]
then
    echo "O arquivo  jdk-21_linux-x64_bin.deb  ja existe"
else
    echo -e "\n\n\n\n JDK-21"
    wget https://github.com/lucgithub343/jdk/releases/download/jdk/jdk-21_linux-x64_bin.deb
fi

sudo dpkg -i jdk-21_linux-x64_bin.deb
sudo apt --fix-broken install -y


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-21-oracle-x64/bin/java 2
sudo update-alternatives --config java


## Configurando variaveis de ambiente do Java
if grep -qi "export JAVA_HOME=/usr/lib/jvm/jdk-21-oracle-x64" /home/$USER/.bashrc; then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "export JAVA_HOME=/usr/lib/jvm/jdk-21-oracle-x64" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
source /home/$USER/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************** INSTALANDO  O  MAVEN ******************************************************************"

sudo apt update -y
sudo apt install maven -y


## Configurando variaveis de ambiente do Maven
if grep -qi "export MAVEN_HOME=/usr/share/maven" /home/$USER/.bashrc ;then
    echo "Variaveis de Ambiente do Maven configurados"
else
    ## Espaco em branco
    echo "" >> /home/$USER/.bashrc
    echo "export MAVEN_HOME=/usr/share/maven" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc
fi


## Usando o comando source para executar o arquivo .bashrc
source /home/$USER/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************** INSTALANDO  O  DOCKER  **********************************************************"

## Atualizando os repositorios
sudo apt update -y

## Instalando o Docker
sudo apt install docker.io -y

## Adicionando o usuario logado ao grupo docker
sudo usermod -aG docker $USER

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************** INSTALANDO  O  DOCKER-COMPOSE ***********************************************************"

if [ -e docker-compose ];then
    echo "O arquivo  docker-compose  ja existe copiando ele para pasta   /usr/local/bin/"
    sudo cp docker-compose /usr/local/bin/
else
  echo -e "\n\n\n\n Docker Compose"
  wget https://github.com/lucotavio/docker-compose-program/releases/download/docker-compose/docker-compose

  chmod +x docker-compose
  sudo cp docker-compose /usr/local/bin/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* CONFIGURAR  CELULAR  PARA  DESENVOLVIMENTO  ANDROID ********************************************"

sudo usermod -aG plugdev $LOGNAME
sudo apt install android-sdk-platform-tools-common -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ADB *******************************************************************"

## Instalando ADB
sudo apt update -y
sudo apt install adb -y
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
sudo apt install qemu-kvm -y
sudo adduser $USER kvm

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  NODE.JS ***************************************************************"

## Instalando o Node.js
sudo apt update -y
sudo apt install ca-certificates -y
sudo apt install gnupg -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg, arch=amd64] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt update -y
sudo apt install nodejs -y

## Como ver versao do Node.js
node -v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ANGULAR ***************************************************************"

sudo npm install -g  @angular/cli@16.2.0

#### Como ver versao do Angular
## ng v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  TYPESCRIPT ************************************************************"

sudo npm install -g typescript

## Como ver versao do Typescript
tsc -v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando fonte firecode
sudo apt install fonts-firacode -y

## Instalando Hardinfo
sudo apt install hardinfo -y

## Instalando gcc g++
sudo apt install gcc g++ make -y

## Instalando o Transmission
sudo apt install transmission -y

## Intalando Gnome tweaks tools
sudo apt install gnome-tweaks -y

## Instalando net-tools
sudo apt install net-tools -y

## Instalando libglib2.0-dev
sudo apt install libglib2.0-dev -y

## Instalando libgconf-2-4
sudo apt install libgconf-2-4 -y

## Instalando cmake
sudo apt install cmake -y

## Instalando libfuse2
## Programas do tipo AppImage
## precisao deste pacote
sudo apt install libfuse2 -y

## Instalando VLC
sudo apt install vlc -y

## Instalando Browser Epiphany
sudo apt install epiphany-browser -y

## Instalando Gnome extensions
sudo apt install gnome-shell-extensions -y
sudo apt install chrome-gnome-shell -y

## Instalando o gerenciador de extensões
sudo apt install gnome-shell-extension-manager -y

## Instalando Kolourpaint
sudo apt install kolourpaint -y

## Instalando o Dconf-editor
sudo apt install dconf-editor -y

## Instalando Spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update -y
sudo apt install spotify-client -y

## Instalando Gparted
sudo apt install gparted -y

## Instalando VirtualBox
sudo apt install virtualbox -y

## Instalando Gimp
sudo apt install gimp -y

## Instalando Gerenciador de pacote Synaptic
sudo apt install synaptic -y

## Instalando OBS Studio
sudo apt install obs-studio -y

## Instalando Handbrake
sudo apt install handbrake -y

## Instalando Umbrelo
sudo apt install umbrello -y

## instalando o Gnome Pomodoro
sudo apt install gnome-shell-pomodoro

## Instalando Kotlin
sudo apt-get install kotlin -y

## Instalando o modulo "libcanberra-gtk-module" para que nao ocorra o erro: “failed to load module canberra-gtk-module”
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module -y

## Instalando Chromium
sudo add-apt-repository ppa:savoury1/chromium -y
sudo apt update -y
sudo apt install chromium-browser -y

## Instalando SDKMAN
curl -s https://get.sdkman.io | bash

echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************************"

## Instalando e configurando Meld
sudo apt install meld -y
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "************************************************************************************************************************************************"




echo -e "\n\n\n****************************** INSTALANDO  SUPORTE  A FLATPAK**************************************************************************"

sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MYSQL  ****************************************************************"

cd /home/$USER/Installation/database-docker-compose/mysql/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MARIADB  **************************************************************"

cd /home/$USER/Installation/database-docker-compose/MariaDB/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRESQL  ***********************************************************"

cd /home/$USER/Installation/database-docker-compose/postgres/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n***************************************************** INSTALANDO  MONGO  *************************************************************"

cd /home/$USER/Installation/database-docker-compose/Mongo
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************** DESINSTALANDO  FIREFOX  SNAP  *********************************************************"

## Removendo o Firefox snap
sudo snap remove firefox


## Colocando prioridade mais alta no Firefox feito por mim
if [ -e /etc/apt/preferences.d/99mozillateamppa ];then
    echo "Arquivo  /etc/apt/preferences.d/99mozillateamppa  ja existe*"
else
  sudo touch /etc/apt/preferences.d/99mozillateamppa

  echo "Package: firefox*" | sudo tee -a /etc/apt/preferences.d/99mozillateamppa
  echo "Pin: release o=luciano" | sudo tee -a /etc/apt/preferences.d/99mozillateamppa
  echo "Pin-Priority: 501" | sudo tee -a /etc/apt/preferences.d/99mozillateamppa

  echo "" | sudo tee -a /etc/apt/preferences.d/99mozillateamppa

  echo "Package: firefox*" | sudo tee -a /etc/apt/preferences.d/99mozillateamppa
  echo "Pin: release o=Ubuntu" | sudo tee -a /etc/apt/preferences.d/99mozillateamppa
  echo "Pin-Priority: -1" | sudo tee -a /etc/apt/preferences.d/99mozillateamppa
fi

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR*******************************************************************"
