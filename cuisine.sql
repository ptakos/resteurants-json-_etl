select distinct V7 from json1;
SELECT V7, COUNT(*) FROM json1 GROUP BY V7;

CREATE TABLE cuisines(
  V1 TEXT);

INSERT cuisines select distinct V7 from json1;


select distinct V8 from json1;
SELECT V8, COUNT(*) FROM json1 GROUP BY V8;

update json1
set V8 = null
where V8 like ' "grades": []';

INSERT cuisines select distinct V8 from json1;

SELECT V9, COUNT(*) FROM json1 where V9 not like ' "name": "%' GROUP BY V9;

start transaction;
INSERT cuisines select distinct V9 from json1 where V9 not like ' "name": "%';
commit;

select * from cuisines where V1 like '%"';

update cuisines
set V1 = replace(V1, '"', '');

SELECT V10, COUNT(*) FROM json1 
where V10 not like' "restaurant_id": "%}' 
AND V10 not like'%nc%' 
AND V10 not like'%lc%'
AND V10 not like'%Smi%' 
GROUP BY V10;

INSERT cuisines 
SELECT distinct V10 FROM json1 
where V10 not like' "restaurant_id": "%}' 
AND V10 not like'%nc%' 
AND V10 not like'%lc%'
AND V10 not like'%Smi%' 
GROUP BY V10;

select * from cuisines where V1 like '%"';
update cuisines
set V1 = replace(V1, '"', '');

select * from cuisines where V1 like '%)';
update cuisines
set V1 = replace(V1, ')', '');

alter table cuisines
change V1 cuisine_type text;

select * from cuisines;