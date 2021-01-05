#!/bin/bash

echo ""


pckarr=(ea-apache24-mod_evasive)
yum update -y
for i in  ${pckarr[*]}
 do
  isinstalled=$(rpm -q $i)
  if [ !  "$isinstalled" == "package $i is not installed" ];
   then
cp /etc/apache2/conf.d/300-mod_evasive.conf /etc/apache2/conf.d/300-mod_evasive.conf-orig
sed -i 's/DOSPageCount 4/DOSPageCount 10/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSSiteCount 100/DOSPageCount 150/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSPageInterval 1/DOSPageInterval 2/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSSiteInterval 2/DOSSiteInterval 3/g' /etc/apache2/conf.d/300-mod_evasive.conf
systemctl restart httpd
echo "Done"
  else
    echo $i is not INSTALLED!!!!
    yum install $i -y
  fi
done

