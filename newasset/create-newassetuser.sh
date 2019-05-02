#!/bin/bash

mysql -u root -p`grep ^pass /etc/ossim/ossim_setup.conf | sed 's/pass=//'` -e "
#CREATE USER 'hostchecker'@'localhost' IDENTIFIED BY 'a_high_strength_password';
GRANT SELECT ON alienvault.host to 'hostchecker'@'localhost' IDENTIFIED BY 'a_high_strength_password';
GRANT SELECT ON alienvault.host_ip to 'hostchecker'@'localhost' IDENTIFIED BY 'a_high_strength_password';
flush privileges;"
