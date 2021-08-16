CREATE TABLE BRANCH4
(
BID INT,
BRANCH_NAME VARCHAR(20),
BRANCH_CITY VARCHAR(20),
ASSETS INT
);


CREATE TABLE ACCOUNTS4
(
ACCNO INT,
BID INT,
BALANCE INT
);


CREATE TABLE DEPOSITOR4
(
CID INT,
ACCNO INT
);


CREATE TABLE CUSTOMER4
(
CID INT,
CUSTOMER_NAME VARCHAR(20),
CUSTOMER_STREET VARCHAR(20),
CUSTOMER_CITY VARCHAR(20)
);




ALTER TABLE ACCOUNTS4 ADD FOREIGN KEY (BID) REFERENCES BRANCH4(BID);
ALTER TABLE DEPOSITOR4 ADD FOREIGN KEY (CID) REFERENCES CUSTOMER4(CID);
ALTER TABLE DEPOSITOR4 ADD FOREIGN KEY (ACCNO) REFERENCES ACCOUNTS4(ACCNO);

INSERT INTO BRANCH4(BID,BRANCH_NAME,BRANCH_CITY,ASSETS) VALUES
(1,'MAIN','C1',50000),
(2,'B2','C2',20000),
(3,'B3','C3',30000),
(4,'B4','C4',40000),
(5,'B5','C5',1000);
SELECT * FROM BRANCH4;

INSERT INTO ACCOUNTS4(ACCNO,BID,BALANCE) VALUES
(101,'1',6000),
(102,'1',4000),
(103,'1',3000),
(104,'2',7000),
(105,'2',5200),
(106,'3',4000),
(107,'3',3000),
(108,'4',1000),
(109,'4',3000),
(110,'5',2000),
(111,'5',80000);
SELECT * FROM ACCOUNTS4;

INSERT INTO DEPOSITOR4(CID,ACCNO) VALUES
(11,101),
(22,102),
(11,103),
(33,104),
(11,105),
(44,106),
(11,107),
(55,108),
(11,109),
(44,110),
(55,111);
SELECT * FROM DEPOSITOR4;

INSERT INTO CUSTOMER4(CID,CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY) VALUES
(11,'CUST1','S1','CITY1'),
(22,'CUST2','S2','CITY2'),
(33,'CUST3','S3','CITY3'),
(44,'CUST4','S4','CITY4'),
(55,'CUST5','S4','CITY5');
SELECT * FROM CUSTOMER4;

#1
SELECT CUSTOMER4.CID,CUSTOMER_NAME,BRANCH_NAME FROM BRANCH4,CUSTOMER4,DEPOSITOR4,ACCOUNTS4 WHERE CUSTOMER4.CID=DEPOSITOR4.CID AND DEPOSITOR4.ACCNO=ACCOUNTS4.ACCNO AND ACCOUNTS4.BID=1 
GROUP BY ACCOUNTS4.BID HAVING COUNT(ACCOUNTS4.BID)>=2;

#2
SELECT CUSTOMER4.CID,CUSTOMER_NAME,ACCOUNTS4.ACCNO,BRANCH_CITY FROM ACCOUNTS4,BRANCH4,DEPOSITOR4,CUSTOMER4 WHERE BRANCH4.BID=ACCOUNTS4.BID AND ACCOUNTS4.ACCNO=DEPOSITOR4.ACCNO AND DEPOSITOR4.CID=CUSTOMER4.CID
AND BRANCH4.BRANCH_CITY='C3'
GROUP BY DEPOSITOR4.CID HAVING COUNT(DISTINCT BRANCH4.BID)=(SELECT COUNT(BID) FROM BRANCH4 WHERE BRANCH_CITY='C3');

#3
SELECT * FROM BRANCH4 WHERE ASSETS=(SELECT MAX(ASSETS) FROM BRANCH4);

#4
SELECT CUSTOMER4.CID,CUSTOMER_NAME,ACCOUNTS4.ACCNO,BALANCE FROM CUSTOMER4,DEPOSITOR4,ACCOUNTS4 
WHERE CUSTOMER4.CID=DEPOSITOR4.CID AND DEPOSITOR4.ACCNO=ACCOUNTS4.ACCNO AND BALANCE=(SELECT MAX(BALANCE) FROM ACCOUNTS4);


