#!/bin/bash
printf "\n This script will create a user in the OSSIM database with username 'hostchecker' \n"
printf "and password: 'a_high_strength_password' \n"
printf "if you would like to change these values,\nplease edit the script manually and re-run \n"
printf "My apologies for not turning this into a nice script that \n"
printf "takes user input to adjust the username and password for \n"
printf "the hostchecker account, but I'm really trying to get ready for my OSSIM \n"
printf "presentation on June 6th, 2019 at the NYS Cybersecurity conference \n" 
printf "and don't have the time to make this script awesome \n \n"
read -p "Please enter y to continue or any other key to quit: " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]

then
printf " \n "
mysql -u root -p$(grep ^pass /etc/ossim/ossim_setup.conf | sed 's/pass=//') -vv -e "
CREATE USER 'hostchecker'@'localhost' IDENTIFIED BY 'a_high_strength_password';
GRANT SELECT ON alienvault.host to 'hostchecker'@'localhost' IDENTIFIED BY 'a_high_strength_password';
GRANT SELECT ON alienvault.host_ip to 'hostchecker'@'localhost' IDENTIFIED BY 'a_high_strength_password';
flush privileges;"

printf "User: 'hostchecker' has been created' \n please remember to copy the newasset.cfg file \n "
printf 'into /etc/ossim/agent/plugins, and enable the newasset plugin\n'
else
printf "\n"
fi

