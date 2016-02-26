#/bin/bash
#http://0v.org/installing-ghost-on-ubuntu-nginx-and-mysql/

#

apt-get install sudo


sed -i.bak s/"Port 22"/"Port 5022"/ /etc/ssh/sshd_config
sed -i.bak s/"PermitRootLogin yes"/"PermitRootLogin no"/ /etc/ssh/sshd_config

#replace /etc/sysctl.conf with initSysctl.conf

##maybe dont need  #groupadd admin
adduser cpoole
#add cpoole to admin group
## mayb edont need #usermod -a -G admin cpoole
usermod -a -G sudo cpoole

# a way to use a different owner or mode for a path when a package is installed
# allows us to allow anyone in the admin group to execute su
#dpkg-statoverride --update --add root admin 4750 /bin/su

apt-get update
apt-get -y install ufw

sed -i.bak s/IPV6=no/IPV6=yes/ /etc/default/ufw

ufw default deny incoming
ufw default allow outgoing

ufw allow 5022/tcp
ufw allow 80/tcp
ufw allow 443/tcp

ufw allow from 192.168.1.0/24

apt-get install fail2ban
#enable recidive and ssh-ddos

#TODO= automate this install process
apt-get  install mysql-client mysql-server

apt-get install nginx

mkdir /var/cache/nginx
chown ww-data:ww-data /var/cache/nginx

mkdir /var/www
chown www-data:www-data /var/www
