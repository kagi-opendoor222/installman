rvm install 2.6.5
rvm --default use 2.6.5
gem install rails -v '6.0.0'
gem install bundler -v '2.2.0'
sudo yum -y install mysql56-server mysql56-devel mysql56 mariadb-server mysql-devel
sudo systemctl start mariadb
sudo systemctl enable mariadb

sudo yum -y install expect

timeout=-1
command="sudo /usr/bin/mysql_secure_installation"
expect -c "
    set timeout ${timeout}
    spawn ${command}
    expect \"Enter current password for root\"
    send \"\n\"
    expect \"Set root password?\"
    send \"N\n\"
    expect \"Remove anonymous users?\"
    send \"Y\n\"
    expect \"Disallow root login remotely?\"
    send \"Y\n\"
    expect \"Remove test database and access to it?\"
    send \"Y\n\"
    expect \"Reload privilege tables now?\"
    send \"Y\n\"
"

sudo yum install nodejs
npm install -g yarn