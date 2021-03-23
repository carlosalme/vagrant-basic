#export the environment variable
export DEBIAN_FRONTEND=nointeractive
apt-get update
apt-get install -y mysql-server
#replace bind address to loopback 
sed -i -e "s/127.0.0.1/0.0.0.0/" /etc/mysql/my.cnf
#apply the changes
restart mysql
#allow root connection (this is unsafe)
mysql -uroot mysql <<< "GRANT ALL ON *.* TO 'root'@'%'; FLUSH PRIVILEGES;"