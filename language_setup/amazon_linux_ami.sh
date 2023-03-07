#!/usr/bin/bash

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up C++ "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo yum install -y gcc-c++

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Ruby "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo amazon-linux-extras install -y ruby3.0

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up php "
printf "%100s" " " | tr ' ' '-'
echo ""
# ref https://techviewleo.com/install-php-8-on-amazon-linux/
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm

sudo yum makecache

sudo yum -y install yum-utils
sudo yum-config-manager --disable 'remi-php*'
sudo amazon-linux-extras enable php8.0
sudo yum clean metadata
sudo yum install -y php-{pear,cgi,pdo,common,curl,mbstring,gd,mysqlnd,gettext,bcmath,json,xml,fpm,intl,zip}

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Java "
printf "%100s" " " | tr ' ' '-'
echo ""
# ref https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/amazon-linux-install.html
sudo amazon-linux-extras enable corretto8
sudo yum install -y java-1.8.0-amazon-corretto-devel

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up JavaScript "
printf "%100s" " " | tr ' ' '-'
echo ""
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
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
npm install -g typescript

cd /usr/local
printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Go "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo wget https://go.dev/dl/go1.19.1.linux-amd64.tar.gz && sudo tar -xzvf go1.19.1.linux-amd64.tar.gz && sudo rm go1.19.1.linux-amd64.tar.gz
printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Swift "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo wget https://download.swift.org/swift-5.7-release/amazonlinux2/swift-5.7-RELEASE/swift-5.7-RELEASE-amazonlinux2.tar.gz && sudo tar -xzvf swift-5.7-RELEASE-amazonlinux2.tar.gz && sudo rm swift-5.7-RELEASE-amazonlinux2.tar.gz

cd ~
printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Scala "
printf "%100s" " " | tr ' ' '-'
echo ""
wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.rpm
sudo yum -y install scala-2.11.8.rpm

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up C# "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
sudo yum install -y dotnet-sdk-6.0

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Perl "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo yum install -y perl-CPAN
perl -MCPAN -e 'install Data::Compare'

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Kotlin "
printf "%100s" " " | tr ' ' '-'
echo ""
curl -s https://get.sdkman.io | bash
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install kotlin

# writing out updated PATH to ~/.bashrc
echo 'export PATH="${PATH}:/usr/local/go/bin:/usr/local/swift-5.7-RELEASE-amazonlinux2/usr/bin"' >> ~/.bashrc

printf "%100s" " " | tr ' ' '-'
echo ""
echo 'Installation complete. Please start a new terminal session for changes to take place.'
printf "%100s" " " | tr ' ' '-'
echo ""
