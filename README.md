MongoPi Install Script - Usage
======================

Script and files needed to painlessly install MongoDB on a Raspberry Pi.

To install, type in Pi's shell:
`curl https://raw.githubusercontent.com/chaser92/mongopi-install-script/master/install.sh | sudo bash`

All then goes on automatically. Please ensure you don't have a `mongodb` user created beforehand.
Installation is automatic and ends up with a working and running instance of MongoDB.

To stop the instance, type: `sudo /etc/init.d/mongod stop` (or `start` to start it again)

*Note*: This installation has journaling on by default (due to fact that Pi is often unplugged from power supply without proper shutdown).

This repository was inspired by following blog post:
https://emersonveenstra.net/mongodb-raspberry-pi/
