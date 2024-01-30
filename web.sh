apt install apache2 wget unzip -y
wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip
unzip 2136_kool_form_pack.zip
cp -r 2136_kool_form_pack/* /var/www/html/
systemctl restart apache2

