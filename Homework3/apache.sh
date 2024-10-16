#!/bin/bash


sudo yum update -y
sudo yum install apache2 -y
echo "<!DOCTYPE html>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
    <h1>Hello, World!</h1>
</body>
</html>" | sudo tee /var/www/html/index.html
sudo systemctl start apache2
sudo systemctl enable apache2
