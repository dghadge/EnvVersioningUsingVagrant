apt-get -y update

apt-get -y install nginx

#provisioning should remove the default folders from nginx install process & copy checked-in files to those locations.
#remove the sites-enabled folder created by nginx install process
rm -rf /etc/nginx/sites-enabled
#copy checked-in configuration files to nginx location
cp -r /vagrant/sites-enabled /etc/nginx


service nginx start