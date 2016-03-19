#create table with auto increment in rowID

CREATE TABLE json1
  (rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  V1 TEXT,  V2 TEXT,  V3 TEXT,  V4 TEXT,  V5 TEXT,  V6 TEXT,  V7 TEXT,  V8 TEXT,  V9 TEXT,  V10 TEXT,  V11 TEXT,  V12 TEXT,
  V13 TEXT,  V14 TEXT,  V15 TEXT,  V16 TEXT,  V17 TEXT,  V18 TEXT,  V19 TEXT,  V20 TEXT,  V21 TEXT,  V22 TEXT,  V23 TEXT,
  V24 TEXT,  V25 TEXT,  V26 TEXT,  V27 TEXT,  V28 TEXT,  V29 TEXT,  V30 TEXT,  V31 TEXT,  V32 TEXT,  V33 TEXT,  V34 TEXT,
  V35 TEXT,  V36 TEXT,  V37 TEXT);
  

#load json file per line separated by comma

LOAD DATA LOCAL INFILE "..path../dataset.json" INTO TABLE json1

#LOAD DATA LOCAL INFILE "FILEPATH" INTO TABLE json1
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

#ensure that table rows match objects of json files

select count(*) from json1;

#check for unnecessary columns

select * from json1 where V37 != 'null';
select * from json1 where V36 != 'null';
select * from json1 where V35 != 'null';

#in this file 36 and 37 are unnecessary so we drop them

alter table json1
drop column V37,
drop column V36;

#backup table

CREATE TABLE json LIKE json1; 
INSERT json SELECT * FROM json1;
