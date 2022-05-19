sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install nginx -y
sudo cp -rvf /tmp/* /var/www/html
sudo systemctl start nginx
