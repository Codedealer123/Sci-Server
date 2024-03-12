echo '┌───── •✧✧• ─────┐
 -SCI-SERVER INSTALLER- 
└───── •✧✧• ─────┘'

readonly MINIMUM_DISK_SIZE_GB="5"
readonly MINIMUM_MEMORY="400"

sudo su

echo '┌───── •✧✧• ─────┐
 -UPDATING- 
└───── •✧✧• ─────┘'

apt update -y
apt upgrade -y
apt upgrade dist -y
apt full-upgrade -y

echo '┌───── •✧✧• ─────┐
 -INSTALLING DEPENDENCIES- 
└───── •✧✧• ─────┘'

apt install libfuse2 -y

echo '┌───── •✧✧• ─────┐
 -INSTALLING PACKAGES- 
└───── •✧✧• ─────┘'

echo '
Installing apache'

apt install apache2 tomcat10-docs webalizer php8.2 php-mysql -y

echo '
Installing java 17'

apt install openjdk-17-jdk -y

echo '
Installing tomcat'

apt install tomcat10 tomcat10-docs -y

echo '
Installing Webalizer'

apt install webalizer

echo '
Installing php'

apt install php8.2 php-mysql -y

echo '
Installing MariaDB'

apt install mariadb -y

echo 'Securing MySQL installation be aware because it will ask you questions'

sudo mysql_secure_installation


echo '┌───── •✧✧• ─────┐
 -INSTALLING NVM- 
└───── •✧✧• ─────┘'

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install node

echo '┌───── •✧✧• ─────┐
 -INSTALLING PHPMYADMIN- 
└───── •✧✧• ─────┘'

echo 'Be aware because it will ask you questions'

apt install phpmyadmin -y

echo '┌───── •✧✧• ─────┐
 -INSTALLING Sci-Server- 
└───── •✧✧• ─────┘'