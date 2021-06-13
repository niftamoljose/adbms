CREATE TABLE STUDENT_INFO
( 
SID INT UNIQUE,
STUD_NAME VARCHAR(20) NOT NULL,
STUDE_SCORE NUMERIC(5,2) DEFAULT 20
);
SELECT * FROM STUDENT_INFO;
DESCRIBE  STUDENT_INFO;
ALTER TABLE STUDENT_INFO ADD PRIMARY KEY(SID);
INSERT INTO STUDENT_INFO VALUES(1,'ALEENA',180),(2,'BINU',175),
(3,'CHERIN',151),(4,'DEEN',165),(5,'ELSA',176);




CREATE TABLE WORKER
    (
        WORKER_ID INT,
        FIRST_NAME VARCHAR(15),
        LAST_NAME VARCHAR(15),
        SALARY NUMERIC(8),
        JOINING_DATE DATE,
        DEPARTMENT VARCHAR (15)
      );
DESCRIBE WORKER;
CREATE TABLE BONUS
( WORKER_ID INT, BONUS_DATE DATE, 
   BONUS_AMOUNT NUMERIC(6) );
ALTER TABLE WORKER ADD PRIMARY KEY (WORKER_ID);
    
ALTER TABLE BONUS ADD CONSTRAINT FK_COD_CSD 
      FOREIGN KEY(WORKER_ID) REFERENCES 
     WORKER (WORKER_ID) ON DELETE CASCADE ;
INSERT INTO WORKER VALUES (1,'monika','arora',100000,'2014-02-20','hr'),(2,'niharika','verma',80000,'2014-06-11','admin'),
(3,'vishal','singhal',300000,'2014-02-20','hr'),(4,'amithabh','singh',500000,'2014-02-20','admin'),
(5,'vivek','bhati',500000,'2014-06-11','admin'),
(6,'vipul','diwan',200000,'2014-06-11','account'),
(7,'satich','kumar',75000,'2014-01-20','admin');
INSERT INTO WORKER VALUES(8,'Geetika','Chauhan',90000,'2014-04-11','admin');
select *from WORKER;
INSERT INTO BONUS VALUES (1,'2016-02-20',5000),(2,'2016-06-11',3000),(3,'2016-02-20',4000),(1,'2016-02-20',4500),
(2,'2016-06-11',3500);
select *from BONUS;
SELECT FIRST_NAME AS WORKER FROM WORKER;
SELECT * FROM worker ORDER BY trim(first_name) ASC ;
SELECT * FROM worker WHERE trim(first_name) != 'vipul' AND trim(first_name) != 'satich';
SELECT *from worker where department='admin';
SELECT * FROM worker WHERE salary BETWEEN 100000 AND 500000;
SELECT upper(first_name) FROM worker;
SELECT distinct DEPARTMENT FROM worker;
SELECT SUBSTR(first_name, 1, 3) AS small FROM worker;
SELECT rtrim(first_name) FROM worker;
SELECT ltrim(department) FROM worker;
SELECT distinct department, LENGTH(department) FROM worker ;
SELECT REPLACE(first_name, 'a', 'A') AS fname FROM worker;
SELECT first_name,last_name,department,salary,bonus_amount FROM worker,bonus 
WHERE worker.worker_id = bonus.worker_id AND bonus_amount > 4000 ;
DELETE from worker WHERE worker_id=7;
SELECT * FROM worker;
ALTER TABLE bonus DROP CONSTRAINT fk_cod_csd;
ALTER TABLE bonus ADD CONSTRAINT fk_cod_na FOREIGN KEY(Worker_ID) 
REFERENCES worker(Worker_ID) ON DELETE no action ;
DELETE from worker WHERE worker_id=8;
SELECT * FROM worker;
