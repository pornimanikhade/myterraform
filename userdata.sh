sudo yum update -y
sudo yum install httpd -y
sudo touch /var/www/html/index.html
sudo echo "Welcome to my website $(hostname)" > /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd