select * from json;

#create grade1 table

create table json2 like json;
insert json2 select * from json;

CREATE TABLE grade_one(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date1 TEXT,
  grade1 TEXT,
  score1 TEXT);
  
#first grade in column V8 

SELECT rowID, V8, V9, V10 FROM json where V8 like ' "grades": [{"date": {"$date": %';
SELECT count(*) FROM json where V8 like ' "grades": [{"date": {"$date": %'; #23078

INSERT grade_one SELECT rowID, V8, V9, V10 FROM json where V8 like ' "grades": [{"date": {"$date": %'; #23078
UPDATE json
SET V8 = null, V9 = null, V10 =null
where V8 like ' "grades": [{"date": {"$date": %';

CREATE TABLE grade_two(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date2 TEXT,
  grade2 TEXT,
  score2 TEXT);
  
SELECT rowID, V11 FROM json where V8 is null;

select count(*) from json where V11 like ' {"date": {"$date": %' and V8 is null; #19662

INSERT grade_two SELECT rowID, V11, V12, V13 FROM json where V11 like ' {"date": {"$date": %' and V8 is null; #19622

UPDATE json
SET V11 = null, V12 = null, V13 =null
where V11 like ' {"date": {"$date": %' and V8 is null;

##
SELECT rowID, V14 FROM json where V11 is null;

select count(*) from json where V14 like ' {"date": {"$date": %' and V11 is null; #17323

CREATE TABLE grade_three(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date3 TEXT,
  grade3 TEXT,
  score3 TEXT);

INSERT grade_three SELECT rowID, V14, V15, V16 FROM json where V14 like ' {"date": {"$date": %' and V11 is null; #17323

UPDATE json
SET V14 = null, V15 = null, V16 =null
where V14 like ' {"date": {"$date": %' and V11 is null;

##
SELECT rowID, V17 FROM json where V14 is null;

select count(*) from json where V17 like ' {"date": {"$date": %' and V14 is null; #14259

CREATE TABLE grade_four(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date4 TEXT,
  grade4 TEXT,
  score4 TEXT);

INSERT grade_four SELECT rowID, V17, V18, V19 FROM json where V17 like ' {"date": {"$date": %' and V14 is null; #14259

UPDATE json
SET V17 = null, V18 = null, V19 =null
where V17 like ' {"date": {"$date": %' and V14 is null;

##
SELECT rowID, V17 FROM json where V14 is null;

select count(*) from json where V20 like ' {"date": {"$date": %' and V17 is null; #8772

CREATE TABLE grade_five(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date5 TEXT,
  grade5 TEXT,
  score5 TEXT);

INSERT grade_five SELECT rowID, V20, V21, V22 FROM json where V20 like ' {"date": {"$date": %' and V17 is null; #8772

UPDATE json
SET V20 = null, V21 = null, V22 =null
where V20 like ' {"date": {"$date": %' and V17 is null;

##
select count(*) from json where V23 like ' {"date": {"$date": %' and V20 is null; #3597

CREATE TABLE grade_six(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date6 TEXT,
  grade6 TEXT,
  score6 TEXT);

INSERT grade_six SELECT rowID, V23, V24, V25 FROM json where V23 like ' {"date": {"$date": %' and V20 is null; #3597

UPDATE json
SET V23 = null, V24 = null, V25 =null
where V23 like ' {"date": {"$date": %' and V20 is null;

##
select count(*) from json where V26 like ' {"date": {"$date": %' and V23 is null; #840

CREATE TABLE grade_seven(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date7 TEXT,
  grade7 TEXT,
  score7 TEXT);

INSERT grade_seven SELECT rowID, V26, V27, V28 FROM json where V26 like ' {"date": {"$date": %' and V23 is null; #840

UPDATE json
SET V26 = null, V27= null, V28 =null
where V26 like ' {"date": {"$date": %' and V23 is null;

##
select count(*) from json where V29 like ' {"date": {"$date": %' and V26 is null; #103

CREATE TABLE grade_eight(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date8 TEXT,
  grade8 TEXT,
  score8 TEXT);

INSERT grade_eight SELECT rowID, V29, V30, V31 FROM json where V29 like ' {"date": {"$date": %' and V26 is null; #103

UPDATE json
SET V29 = null, V30= null, V31 =null
where V29 like ' {"date": {"$date": %' and V26 is null;

##
select count(*) from json where V32 like ' {"date": {"$date": %' and V29 is null; #8

CREATE TABLE grade_nine(
rowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grade_date9 TEXT,
  grade9 TEXT,
  score9 TEXT);

INSERT grade_nine SELECT rowID, V32, V33, V34 FROM json where V32 like ' {"date": {"$date": %' and V29 is null; #8

UPDATE json
SET V32 = null, V33= null, V34 =null
where V32 like ' {"date": {"$date": %' and V29 is null;

##first grade in column V10
SELECT count(*) FROM json where V10 like ' "grades": [{"date": {"$date": %'; #273

INSERT grade_one SELECT rowID, V10, V11, V12 FROM json where V10 like ' "grades": [{"date": {"$date": %'; #273

UPDATE json
SET V10 = null, V11= null, V12 =null
where V10 like ' "grades": [{"date": {"$date": %';

##
select count(*) from json where V13 like ' {"date": {"$date": %' and V10 is null; #187

INSERT grade_two SELECT rowID, V13, V14, V15 FROM json where V13 like ' {"date": {"$date": %' and V10 is null; #187

UPDATE json
SET V13 = null, V14= null, V15 =null
where V13 like ' {"date": {"$date": %' and V10 is null;

##
select count(*) from json where V16 like ' {"date": {"$date": %' and V13 is null; #137

INSERT grade_three SELECT rowID, V16, V17, V18 FROM json where V16 like ' {"date": {"$date": %' and V13 is null; #137

UPDATE json
SET V16 = null, V17= null, V18 =null
where V16 like ' {"date": {"$date": %' and V13 is null;

##
select count(*) from json where V19 like ' {"date": {"$date": %' and V16 is null; #86

INSERT grade_four SELECT rowID, V19, V20, V21 FROM json where V19 like ' {"date": {"$date": %' and V16 is null; #86

UPDATE json
SET V19 = null, V20= null, V21 =null
where V19 like ' {"date": {"$date": %' and V16 is null;

##
select count(*) from json where V22 like ' {"date": {"$date": %' and V19 is null; #41

INSERT grade_five SELECT rowID, V22, V23, V24 FROM json where V22 like ' {"date": {"$date": %' and V19 is null; #41

UPDATE json
SET V22 = null, V23= null, V24 =null
where V22 like ' {"date": {"$date": %' and V19 is null;

##
select count(*) from json where V25 like ' {"date": {"$date": %' and V22 is null; #9

INSERT grade_six SELECT rowID, V25, V26, V27 FROM json where V25 like ' {"date": {"$date": %' and V22 is null; #9

UPDATE json
SET V25 = null, V26= null, V27 =null
where V25 like ' {"date": {"$date": %' and V22 is null;

##
select count(*) from json where V28 like ' {"date": {"$date": %' and V25 is null; #9

INSERT grade_seven SELECT rowID, V28, V29, V30 FROM json where V28 like ' {"date": {"$date": %' and V25 is null; #1

UPDATE json
SET V28 = null, V29= null, V30 =null
where V28 like ' {"date": {"$date": %' and V25 is null;

##first grade in column V11
SELECT count(*) FROM json where V11 like ' "grades": [{"date": {"$date": %'; #1198

INSERT grade_one SELECT rowID, V11, V12, V13 FROM json where V11 like ' "grades": [{"date": {"$date": %'; #1198

UPDATE json
SET V11 = null, V12= null, V13 =null
where V11 like ' "grades": [{"date": {"$date": %';

##
SELECT count(*) FROM json where V14 like ' {"date": {"$date": %' and V11 is null; #1052

INSERT grade_two SELECT rowID, V14, V15, V16 FROM json where V14 like ' {"date": {"$date": %' and V11 is null; #1052

UPDATE json
SET V14 = null, V15= null, V16 =null
where V14 like ' {"date": {"$date": %' and V11 is null;

##
SELECT count(*) FROM json where V17 like ' {"date": {"$date": %' and V14 is null; #941

INSERT grade_three SELECT rowID, V17, V18, V19 FROM json where V17 like ' {"date": {"$date": %' and V14 is null; #941

UPDATE json
SET V17 = null, V18= null, V19 =null
where V17 like ' {"date": {"$date": %' and V14 is null;

##
SELECT count(*) FROM json where V20 like ' {"date": {"$date": %' and V17 is null; #792

INSERT grade_four SELECT rowID, V20, V21, V22 FROM json where V20 like ' {"date": {"$date": %' and V17 is null; #792

UPDATE json
SET V20 = null, V21= null, V22 =null
where V20 like ' {"date": {"$date": %' and V17 is null;

##
SELECT count(*) FROM json where V23 like ' {"date": {"$date": %' and V20 is null; #538

INSERT grade_five SELECT rowID, V23, V24, V25 FROM json where V23 like ' {"date": {"$date": %' and V20 is null; #538

UPDATE json
SET V23 = null, V24= null, V25 =null
where V23 like ' {"date": {"$date": %' and V20 is null;

##
SELECT count(*) FROM json where V26 like ' {"date": {"$date": %' and V23 is null; #254

INSERT grade_six SELECT rowID, V26, V27, V28 FROM json where V26 like ' {"date": {"$date": %' and V23 is null; #254

UPDATE json
SET V26 = null, V27= null, V28 =null
where V26 like ' {"date": {"$date": %' and V23 is null;

##
SELECT count(*) FROM json where V29 like ' {"date": {"$date": %' and V26 is null; #75

INSERT grade_seven SELECT rowID, V29, V30, V31 FROM json where V29 like ' {"date": {"$date": %' and V26 is null; #75

UPDATE json
SET V29 = null, V30= null, V31 =null
where V29 like ' {"date": {"$date": %' and V26 is null;

##
SELECT count(*) FROM json where V32 like ' {"date": {"$date": %' and V29 is null; #8

INSERT grade_eight SELECT rowID, V32, V33, V34 FROM json where V32 like ' {"date": {"$date": %' and V29 is null; #8

UPDATE json
SET V32 = null, V33= null, V34 =null
where V32 like ' {"date": {"$date": %' and V29 is null;

##first grade in column V12
SELECT count(*) FROM json where V12 like ' "grades": [{"date": {"$date": %'; #72

INSERT grade_one SELECT rowID, V12, V13, V14 FROM json where V12 like ' "grades": [{"date": {"$date": %'; #72

UPDATE json
SET V14 = null, V12= null, V13 =null
where V12 like ' "grades": [{"date": {"$date": %';

##
SELECT count(*) FROM json where V15 like ' {"date": {"$date": %' and V12 is null; #58

INSERT grade_two SELECT rowID, V15, V16, V17 FROM json where V15 like ' {"date": {"$date": %' and V12 is null; #58

UPDATE json
SET V17 = null, V15= null, V16 =null
where V15 like ' {"date": {"$date": %' and V12 is null;

##
SELECT count(*) FROM json where V18 like ' {"date": {"$date": %' and V15 is null; #48

INSERT grade_three SELECT rowID, V18, V19, V20 FROM json where V18 like ' {"date": {"$date": %' and V15 is null; #48

UPDATE json
SET V18 = null, V19= null, V20 =null
where V18 like ' {"date": {"$date": %' and V15 is null;

##
SELECT count(*) FROM json where V21 like ' {"date": {"$date": %' and V18 is null; #35

INSERT grade_four SELECT rowID, V21, V22, V23 FROM json where V21 like ' {"date": {"$date": %' and V18 is null; #35

UPDATE json
SET V21 = null, V22= null, V23 =null
where V21 like ' {"date": {"$date": %' and V18 is null;

##
SELECT count(*) FROM json where V24 like ' {"date": {"$date": %' and V21 is null; #12

INSERT grade_five SELECT rowID, V24, V25, V26 FROM json where V24 like ' {"date": {"$date": %' and V21 is null; #12

UPDATE json
SET V24 = null, V25= null, V26 =null
where V24 like ' {"date": {"$date": %' and V21 is null;

##
SELECT count(*) FROM json where V27 like ' {"date": {"$date": %' and V24 is null; #4

INSERT grade_six SELECT rowID, V27, V28, V29 FROM json where V27 like ' {"date": {"$date": %' and V24 is null; #4

UPDATE json
SET V27 = null, V28= null, V29 =null
where V27 like ' {"date": {"$date": %' and V24 is null;

select count(*) from grade_nine; #8
select count(*) from grade_eight; #111
select count(*) from grade_seven; #916
select count(*) from grade_six; #3864
select count(*) from grade_five; #9363
select count(*) from grade_four; #15172
select count(*) from grade_three; #18449
select count(*) from grade_two; #20959
select count(*) from grade_one; #24621
