6/13/2017
Kevin Geil @ info at friendandfamilytech.com

The newasset plugin is configured to generate alarms in OSSIM or Alienvault upon detection of new assets.
Quick installation:  from the newasset directory: 
If you want to use a different password: Change the password in create-newassetuser.sh and in newasset.cfg.
This is easily done by invoking:

sed -i 's/a_high_strength_password/mypassword/g' newasset.cfg create-newassetuser.sh

Once you have changed the password, invoke the following two commands:
./create-newassetuser.sh
cp newasset.cfg /etc/ossim/agent/plugins

Then invoke: alienvault-setup
Select [1 configure sensor], hit ok.
Select [4 configure Data Source Plugins], hit ok.
Scroll down to newasset, and hit the space bar so it's selected.
Select OK, hit enter.
Select Back, hit enter.
Select [8 Apply all Changes]
Hit enter and wait until the reconfig completes.

change sensor config, select newasset, click ok, then "Apply all changes"

you should now get alarms for new assets.

Full installation details are located within newasset.cfg, and newasset.sql
Files were uploaded to Github during the writing of a SANS gold paper: 
"OSSIM: CIS Critical Security Controls Assessment in a Windows Environment". 

The link to the published paper is here:
https://www.sans.org/reading-room/whitepapers/logging/paper/38045
