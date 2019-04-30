# Sql statement to insert event into database for sonicwall event 1432 Configuration change.
# Sample: Feb  5 12:27:10 10.102.16.1   id=firewall sn=C0EAE4EA7D50 time="2019-02-05 17:27:10 UTC" fw=208.105.225.131 pri=6 c=5 gcat=1 m=1432 src=10.101.0.72 usr="mfranti" msg="Configuration changed: CFS Policy Name by user mfranti" n=12
# SQL below:
INSERT IGNORE INTO plugin_sid (plugin_id, sid, class_id, reliability, priority, name, subcategory_id, category_id) VALUES (1573, 1432, NULL, 1, 2, 'SonicWall: Configuration changed', 188, 8);
