CREATE TABLE emp
(
EMPNO INT,
ENAME VARCHAR(25),
JOB VARCHAR(12),
SALARY INT,
COMMISSION INT,
DEPTNO INT
);
SELECT * FROM employee.emp;
INSERT INTO  EMP (EMPNO,ENAME,JOB ,SALARY,DEPTNO ) VALUES 
(7369,'SMITH','CLERK',800,20);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY,COMMISSION, DEPTNO ) VALUES
(7499,'ALLEN','SALESMAN',1600,300,30);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY,COMMISSION, DEPTNO ) VALUES
(7521, 'WARD','SALESMAN',1250,500,30);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7566,'JONES','MANGER',2975,20);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY,COMMISSION, DEPTNO ) VALUES
(7654,'MARTIN','SALESMAN',1250,1400,30);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7698,'BLAKE','MANAGER',2850,30);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7782 ,'CLARK','MANAGER',2450,10);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7788,'SCOTT','ANALYST',3000,20);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7839 ,'KING','PRESIDENT', 5000,10);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7844,'TURNER','SALESMAN', 1500 ,30);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7876,'ADAMS','CLERK ', 1100,20);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7900,'JAMES','NULL',950,30);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7902,'FORD ','ANALYST ',3000 , 20);
INSERT INTO emp (EMPNO,ENAME,JOB ,SALARY, DEPTNO ) VALUES
(7934, 'MILLER ', 'CLERK ',1300, 10);
SELECT *FROM emp;
UPDATE emp SET JOB='CLERK' WHERE JOB='NULL'; 
ALTER TABLE emp ADD COLUMN DATE_JOIN VARCHAR(50);
UPDATE emp SET DATE_JOIN='17-DEC-80' WHERE EMPNO='7369';
UPDATE emp SET DATE_JOIN='20-FEB-81' WHERE EMPNO='7499';
UPDATE emp SET DATE_JOIN='22-FEB-81' WHERE EMPNO='7521';
UPDATE emp SET DATE_JOIN='02-APR-81' WHERE EMPNO='7566';
UPDATE emp SET DATE_JOIN='28-SEP-81' WHERE EMPNO='7654';
UPDATE emp SET DATE_JOIN='01-MAY-81' WHERE EMPNO='7698';
UPDATE emp SET DATE_JOIN='09-JUN-81' WHERE EMPNO='7782';
UPDATE emp SET DATE_JOIN='19-APR-87' WHERE EMPNO='7788';
UPDATE emp SET DATE_JOIN='17-NOV-81' WHERE EMPNO='7839';
UPDATE emp SET DATE_JOIN='08-SEP-81' WHERE EMPNO='7844';
UPDATE emp SET DATE_JOIN='23-MAY-87' WHERE EMPNO='7876';
UPDATE emp SET DATE_JOIN='03-DEC-81' WHERE EMPNO='7900';
UPDATE emp SET DATE_JOIN='03-DEC-81' WHERE EMPNO='7902';
UPDATE emp SET DATE_JOIN='03-DEC-81' WHERE EMPNO='7934';
SELECT * FROM emp;
SELECT DISTINCT JOB FROM emp;
SELECT ENAME,DEPTNO FROM emp WHERE DEPTNO IN (20,30);
SELECT ENAME,(SALARY+ IFNULL(COMMISSION,0)) AS TOTAL_SALARY FROM emp;
SELECT * FROM emp;
SELECT ENAME,SALARY*12 AS ANNUAL FROM emp;
SELECT * FROM emp WHERE DATE_JOIN='03-DEC-81';
SELECT * FROM emp ;
SELECT (SALARY+IFNULL(COMMISSION,0)) AS TOTAL_SALARY FROM emp WHERE EMPNO='MILLER';
DELETE FROM emp WHERE EMPNO='MILLER';
SELECT ENAME,DEPTNO FROM EMP;
ALTER TABLE EMP ADD COLUMN TOTAL_SALARY INT;
UPDATE EMP SET TOTAL_SALARY=(SALARY+IFNULL(COMMISSION,0));
ALTER TABLE EMP DROP COLUMN COMMISSION;
SELECT E.EMPNO,E.SALARY FROM EMP  E INNER JOIN EMP B ON E.SALARY=B.SALARY AND E.EMPNO<>B.EMPNO;
SELECT ENAME AS NAME , EMPNO AS EMP_ID FROM EMP;
ALTER TABLE EMP RENAME TO EMPLOYEE;
SELECT * FROM EMPLOYEE;
DESCRIBE EMPLOYEE;
CREATE TABLE EMP_TAB AS SELECT * FROM EMPLOYEE;
DESCRIBE EMP_TAB;
SELECT DISTINCT E.EMPNO,E.ENAME,E.JOB,E.SALARY,E.DEPTNO,E.DATE_JOIN,E.TOTAL_SALARY,
B.EMPNO,B.ENAME,B.JOB,B.SALARY,B.DEPTNO,B.DATE_JOIN,B.TOTAL_SALARY FROM EMP_TAB E JOIN
EMPLOYEE B WHERE E.EMPNO=B.EMPNO;
TRUNCATE TABLE EMPLOYEE;
SELECT * FROM EMPLOYEE;
DROP TABLE EMPLOYEE;





 
