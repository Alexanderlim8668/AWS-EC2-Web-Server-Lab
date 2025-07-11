#!/bin/bash
# Install Apache web server
yum -y install httpd

# Configure Apache to start on boot
systemctl enable httpd

# Start Apache now
systemctl start httpd

# Create a simple HTML page
echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html
