#!/usr/bin/bash

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Ruby "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt update
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential        libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
rbenv install 3.0.0
rbenv global 3.0.0


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up php "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt install software-properties-common ca-certificates lsb-release apt-transport-https
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php8.0
sudo apt install -y php-{pear,cgi,pdo,common,curl,mbstring,gd,mysqlnd,gettext,bcmath,json,xml,fpm,intl,zip}


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Java "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt-get install openjdk-8-jdk


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up JavaScript "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt install curl
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
sudo apt install npm
nvm install 16.10.0
node -e "console.log('Running Node.js ' + process.version)"
npm i -g npm
npm install -g lodash
npm i --save lodash


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up TypeScript "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo npm install -g typescript

cd /usr/local
printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Go "
printf "%100s" " " | tr ' ' '-'
echo ""
# https://go.dev/doc/install
sudo wget https://go.dev/dl/go1.19.1.linux-amd64.tar.gz && sudo tar -xzvf go1.19.1.linux-amd64.tar.gz && sudo rm go1.19.1.linux-amd64.tar.gz
printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Swift "
printf "%100s" " " | tr ' ' '-'
echo ""
swift_release="swift-5.7-RELEASE-ubuntu20.04.tar.gz"
sudo wget "https://download.swift.org/swift-5.7-release/ubuntu2004/swift-5.7-RELEASE/$swift_release" && sudo tar -xzvf $swift_release && sudo rm $swift_release

cd ~
printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Scala "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt-get install scala


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up C# "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt-get update && \
  sudo apt-get install -y dotnet6

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Perl "
printf "%100s" " " | tr ' ' '-'
echo ""
perl -MCPAN -e 'install Data::Compare'

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Kotlin "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt install zip
sudo apt install unzip
curl -s https://get.sdkman.io | bash
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install kotlin


# writing out updated PATH to ~/.bashrc
echo 'PATH="${PATH}:/usr/local/swift-5.7-RELEASE-ubuntu20.04/usr/bin:/usr/local/go/bin"' >> ~/.bashrc

printf "%100s" " " | tr ' ' '-'
echo ""
echo 'Installation complete. Please start a new terminal session for changes to take place.'
printf "%100s" " " | tr ' ' '-'
echo ""
