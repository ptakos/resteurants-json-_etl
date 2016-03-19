#find the pattern for column V1
select char_length(V1) from json1 where rowID='1';
select substring(V1, 27, length(V1) - 27) from json1 where rowID='1';
select substring(V1, 1, length(V1) - 5) from json1 where rowID='1';

#Copy field value for string to be replaced
UPDATE json1
SET V1 = REPLACE(V1, '{"address": {"building": "', '')
WHERE V1 LIKE '%{"address": {"building": "%';

#view result
select V1 from json1;

#in this case we need to replace double quotes (") at the end of the string as well
select count(*) from json1 where V1 like '%"';

UPDATE json1
SET V1 = REPLACE(V1, '"', '')
WHERE V1 LIKE '%"';

#repeat for all columns
select char_length(V2) from json1 where rowID='1';
select substring(V2, 1, 11) from json1 where rowID='1';

UPDATE json1
SET V2 = REPLACE(V2, ' "coord": [', '')
WHERE V2 LIKE ' "coord": [%';


select rowID, V3 from json1 where V3 not like '%.%';

UPDATE json1
SET V3 = REPLACE(V3, ']', '')
WHERE V3 LIKE '%]';

update json1
set V3 = '00.00'
where V3 not like '%.%';

select count(*) from json1 where V4 like ' "street": "%';

truncate json;
CREATE TABLE json LIKE json1; 
INSERT json SELECT * FROM json1;
select count(*) from json;

UPDATE json1
SET V4 = REPLACE(V4, ' "street": "', '')
WHERE V4 LIKE ' "street": "%';

select rowID, V4 from json1 where V4 like '%"';

UPDATE json1
SET V4 = REPLACE(V4, '"', '')
WHERE V4 LIKE '%"';

select V5 from json1;

select count(*) from json1 where V5 like ' "zipcode": "%';

UPDATE json1
SET V5 = REPLACE(V5, ' "zipcode": "', '')
WHERE V5 LIKE ' "zipcode": "%';

select count(*) from json1 where V5 like '%"}';

UPDATE json1
SET V5 = REPLACE(V5, '"}', '')
WHERE V5 LIKE '%"}';

select rowID, V5 from json1 where V5 not like '_____';
select * from json1 where rowid = '21333';

select V6 from json1;

select count(*) from json1 where V6 like ' "borough": "%';

UPDATE json1
SET V6 = REPLACE(V6, ' "borough": "', '')
WHERE V6 LIKE ' "borough": "%';

UPDATE json1
SET V6 = REPLACE(V6, '"', '')
WHERE V6 LIKE '%"';

CREATE TABLE addresses(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  V1 TEXT,
  V2 TEXT,
  V3 TEXT,
  V4 TEXT,
  V5 TEXT,
  V6 TEXT);

INSERT addresses SELECT rowID, V1, V2, V3, V4, V5, V6 FROM json1;

update addresses set V5 = '00000' where rowID='21333';

alter table addresses 
change V1 building_No text,
change V2 longtitude real, 
change V3 latitude real,
change V4 address text,
change V5 zipcode int,
change V6 borough text;


select * from addresses;
