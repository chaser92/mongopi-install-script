#!/bin/bash
# Based on tutorial from https://emersonveenstra.net/mongodb-raspberry-pi/
echo Installing MongoDB...
cd /tmp &&
curl https://raw.githubusercontent.com/chaser92/mongopi-install-script/master/mongo.tar.gz | tar zx &&
cp -r mongo/* /usr/ &&
rm -r mongo &&
adduser --firstuid 100 --ingroup nogroup --shell /etc/false --disabled-password --gecos "" --no-create-home mongodb &&
mkdir -p /var/log/mongodb/ &&
mkdir -p /var/lib/mongodb/ &&
chown mongodb:nogroup /var/log/mongodb/ &&
chown mongodb:nogroup /var/lib/mongodb/ &&
curl -o /etc/init.d/mongod https://raw.githubusercontent.com/chaser92/mongopi-install-script/master/mongod &&
chmod a+x /etc/init.d/mongod &&
curl -o /etc/mongodb.conf https://raw.githubusercontent.com/chaser92/mongopi-install-script/master/mongodb.conf &&
/etc/init.d/mongod start &&
echo MongoDB has been installed succesfully!
