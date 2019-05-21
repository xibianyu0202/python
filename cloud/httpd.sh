#httpd脚本用于临时搭建网站
#!/bin/bash
yum -y install httpd
echo "test page" > /var/www/html/index.html
systemctl enable httpd
systemctl start httpd

