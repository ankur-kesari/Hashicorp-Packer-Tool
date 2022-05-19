sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo mkdir /var/www/wordpress
sudo wget https://wordpress.org/latest.zip
sudo apt update -y
sudo apt install unzip -y
sudo unzip latest.zip
sudo rm -f latest.zip
sudo cp -rf wordpress/* .
sudo rm -rf wordpress
sudo cp -rf wp-config-sample.php wp-config.php
sudo mv /home/ubuntu/* /var/www/wordpress/
sudo mv /tmp/nginx-conf /etc/nginx/sites-available/nginx-conf
sudo ln -s /etc/nginx/sites-available/nginx-conf /etc/nginx/sites-enabled/
sudo unlink /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl reload nginx
sudo apt update -y
sudo apt install php-mysql -y
sudo apt install php-fpm -y
sudo apt install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y
sudo systemctl restart php7.4-fpm



