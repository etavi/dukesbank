DROP TABLE ACCOUNT;
DROP TABLE CUSTOMER;
DROP TABLE TX;
DROP TABLE CUSTOMER_ACCOUNT_XREF;
DROP TABLE NEXT_ID;
CREATE TABLE CUSTOMER(CUSTOMER_ID VARCHAR(8) NOT NULL,LAST_NAME VARCHAR(30),FIRST_NAME VARCHAR(30),MIDDLE_INITIAL VARCHAR(1),STREET VARCHAR(40),CITY VARCHAR(40),STATE VARCHAR(2),ZIP VARCHAR(5),PHONE VARCHAR(16),EMAIL VARCHAR(30),CONSTRAINT PK_CUSTOMER PRIMARY KEY(CUSTOMER_ID));
CREATE TABLE ACCOUNT(ACCOUNT_ID VARCHAR(8) NOT NULL,TYPE VARCHAR(24),DESCRIPTION VARCHAR(30),BALANCE NUMERIC(10,2),CREDIT_LINE NUMERIC(10,2),BEGIN_BALANCE NUMERIC(10,2),BEGIN_BALANCE_TIME_STAMP TIMESTAMP,CONSTRAINT PK_ACCOUNT PRIMARY KEY(ACCOUNT_ID));
CREATE TABLE TX(TX_ID VARCHAR(8) NOT NULL,ACCOUNT_ID VARCHAR(8),TIME_STAMP TIMESTAMP,AMOUNT NUMERIC(10,2),BALANCE NUMERIC(10,2),DESCRIPTION VARCHAR(30),CONSTRAINT PK_TX PRIMARY KEY(TX_ID));
CREATE TABLE CUSTOMER_ACCOUNT_XREF(CUSTOMER_ID VARCHAR(8),ACCOUNT_ID VARCHAR(8));
CREATE TABLE NEXT_ID(BEANNAME VARCHAR(30) NOT NULL,ID NUMERIC,CONSTRAINT PK_NEXTID PRIMARY KEY(BEANNAME));
INSERT INTO ACCOUNT VALUES('5005','Money Market','Hi Balance',3300.00,0.00,3500.00,TO_TIMESTAMP('2003-JUL-28 23:03:20.000000000','YYYY-MON-DD HH24:MI:SS.FF'));
INSERT INTO ACCOUNT VALUES('5006','Checking','Checking',2458.32,0.00,66.54,TO_TIMESTAMP('2003-JUL-21 03:12:00.000000000','YYYY-MON-DD HH24:MI:SS.FF'));
INSERT INTO ACCOUNT VALUES('5007','Credit','Visa',220.03,5000.00,166.08,TO_TIMESTAMP('2003-JUL-23 10:13:54.000000000','YYYY-MON-DD HH24:MI:SS.FF'));
INSERT INTO ACCOUNT VALUES('5008','Savings','Super Interest Account',59601.35,0.00,5433.89,TO_TIMESTAMP('2003-JUL-15 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'));
INSERT INTO CUSTOMER VALUES('200','Jones','Richard','K','88 Poplar Ave.','Cupertino','CA','95014','408-123-4567','rhill@j2ee.com');
INSERT INTO CUSTOMER VALUES('201','Jones','Mary','R','88 Poplar Ave.','Cupertino','CA','95014','408-123-4567','mhill@j2ee.com');
INSERT INTO TX VALUES('1','5005',TO_TIMESTAMP('2003-SEP-01 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),200.00,4200.00,'Refund');
INSERT INTO TX VALUES('10','5008',TO_TIMESTAMP('2003-SEP-10 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),1000.00,55601.35,'Deposit');
INSERT INTO TX VALUES('11','5007',TO_TIMESTAMP('2003-SEP-11 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),585.00,970.08,'Airplane Tickets');
INSERT INTO TX VALUES('12','5006',TO_TIMESTAMP('2003-SEP-12 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-675.00,2210.00,'Mortgage Payment');
INSERT INTO TX VALUES('13','5005',TO_TIMESTAMP('2003-SEP-13 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-100.00,3900.00,'ATM Withdrawal');
INSERT INTO TX VALUES('14','5006',TO_TIMESTAMP('2003-SEP-14 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-385.08,1824.92,'Visa Payment');
INSERT INTO TX VALUES('15','5007',TO_TIMESTAMP('2003-SEP-15 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-385.08,585.00,'Payment');
INSERT INTO TX VALUES('17','5007',TO_TIMESTAMP('2003-SEP-17 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),26.95,611.95,'Movies');
INSERT INTO TX VALUES('18','5006',TO_TIMESTAMP('2003-SEP-18 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-31.00,1793.92,'Groceries');
INSERT INTO TX VALUES('19','5005',TO_TIMESTAMP('2003-SEP-19 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-150.00,3750.00,'ATM Withdrawal');
INSERT INTO TX VALUES('20','5006',TO_TIMESTAMP('2003-SEP-20 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),2000.00,3173.92,'Paycheck Deposit');
INSERT INTO TX VALUES('21','5007',TO_TIMESTAMP('2003-SEP-21 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),124.00,735.95,'Furnishings');
INSERT INTO TX VALUES('23','5007',TO_TIMESTAMP('2003-SEP-23 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),33.12,769.07,'Hardware');
INSERT INTO TX VALUES('24','5006',TO_TIMESTAMP('2003-SEP-24 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-175.33,2998.59,'Utility Bill');
INSERT INTO TX VALUES('25','5006',TO_TIMESTAMP('2003-SEP-25 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-123.00,2875.59,'Groceries');
INSERT INTO TX VALUES('26','5006',TO_TIMESTAMP('2003-SEP-26 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-675.00,2200.59,'Mortgage Payment');
INSERT INTO TX VALUES('27','5007',TO_TIMESTAMP('2003-SEP-27 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),24.72,793.79,'Cafe');
INSERT INTO TX VALUES('28','5008',TO_TIMESTAMP('2003-SEP-28 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),1000.00,56601.35,'Deposit');
INSERT INTO TX VALUES('29','5007',TO_TIMESTAMP('2003-SEP-29 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),35.00,828.79,'Hair Salon');
INSERT INTO TX VALUES('3','5008',TO_TIMESTAMP('2003-SEP-03 13:01:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-1000.00,54601.35,'Transfer Out');
INSERT INTO TX VALUES('30','5006',TO_TIMESTAMP('2003-SEP-30 13:00:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-20.00,2180.59,'Gasoline');
INSERT INTO TX VALUES('31','5005',TO_TIMESTAMP('2003-OCT-01 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-100.00,3650.00,'ATM Withdrawal');
INSERT INTO TX VALUES('32','5006',TO_TIMESTAMP('2003-OCT-02 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-56.87,2123.72,'Phone Bill');
INSERT INTO TX VALUES('33','5007',TO_TIMESTAMP('2003-OCT-03 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),67.99,896.78,'Acme Shoes');
INSERT INTO TX VALUES('35','5007',TO_TIMESTAMP('2003-OCT-05 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),24.00,920.78,'Movies');
INSERT INTO TX VALUES('36','5006',TO_TIMESTAMP('2003-OCT-06 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),2000.00,4123.72,'Paycheck Deposit');
INSERT INTO TX VALUES('38','5006',TO_TIMESTAMP('2003-OCT-08 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-100.00,4023.72,'Groceries');
INSERT INTO TX VALUES('39','5007',TO_TIMESTAMP('2003-OCT-09 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),26.95,947.73,'Pizza');
INSERT INTO TX VALUES('4','5006',TO_TIMESTAMP('2003-SEP-03 13:02:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),1000.00,1085.00,'Transfer In');
INSERT INTO TX VALUES('41','5007',TO_TIMESTAMP('2003-OCT-11 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),125.00,1072.73,'Dentist');
INSERT INTO TX VALUES('42','5006',TO_TIMESTAMP('2003-OCT-12 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-675.00,3348.72,'Mortgage Payment');
INSERT INTO TX VALUES('43','5005',TO_TIMESTAMP('2003-OCT-13 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-150.00,3500.00,'ATM Withdrawal');
INSERT INTO TX VALUES('44','5006',TO_TIMESTAMP('2003-OCT-14 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-947.73,2400.99,'Visa Payment');
INSERT INTO TX VALUES('45','5007',TO_TIMESTAMP('2003-OCT-15 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-947.73,125.00,'Payment');
INSERT INTO TX VALUES('47','5007',TO_TIMESTAMP('2003-OCT-17 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),49.90,100.85,'Bookstore');
INSERT INTO TX VALUES('48','5006',TO_TIMESTAMP('2003-OCT-18 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-100.00,2300.99,'Groceries');
INSERT INTO TX VALUES('5','5007',TO_TIMESTAMP('2003-SEP-05 13:03:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),33.00,199.08,'Clothing');
INSERT INTO TX VALUES('50','5006',TO_TIMESTAMP('2003-OCT-20 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),2000.00,4300.99,'Paycheck Deposit');
INSERT INTO TX VALUES('51','5007',TO_TIMESTAMP('2003-OCT-21 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),80.32,181.17,'Restaurant');
INSERT INTO TX VALUES('53','5007',TO_TIMESTAMP('2003-OCT-23 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),11.78,192.95,'Electronics');
INSERT INTO TX VALUES('54','5006',TO_TIMESTAMP('2003-OCT-24 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-150.45,4150.54,'Utility Bill');
INSERT INTO TX VALUES('55','5005',TO_TIMESTAMP('2003-OCT-25 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-100.00,3400.00,'ATM Withdrawal');
INSERT INTO TX VALUES('56','5006',TO_TIMESTAMP('2003-OCT-26 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-675.00,3475.54,'Mortgage Payment');
INSERT INTO TX VALUES('57','5007',TO_TIMESTAMP('2003-OCT-27 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),24.00,216.95,'Ice Skating');
INSERT INTO TX VALUES('58','5006',TO_TIMESTAMP('2003-OCT-28 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-1000.00,2475.54,'Transfer Out');
INSERT INTO TX VALUES('59','5008',TO_TIMESTAMP('2003-OCT-28 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),1000.00,57601.35,'Transfer In');
INSERT INTO TX VALUES('6','5006',TO_TIMESTAMP('2003-SEP-06 13:04:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),2000.00,3085.00,'Paycheck Deposit');
INSERT INTO TX VALUES('60','5006',TO_TIMESTAMP('2003-NOV-02 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-99.22,3376.32,'Phone Bill');
INSERT INTO TX VALUES('61','5007',TO_TIMESTAMP('2003-NOV-03 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),29.97,246.92,'Toy Store');
INSERT INTO TX VALUES('62','5006',TO_TIMESTAMP('2003-NOV-04 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-2000.00,376.32,'Transfer Out');
INSERT INTO TX VALUES('63','5008',TO_TIMESTAMP('2003-NOV-05 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),2000.00,59601.35,'Transfer In');
INSERT INTO TX VALUES('64','5006',TO_TIMESTAMP('2003-NOV-06 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),2000.00,2376.32,'Paycheck Deposit');
INSERT INTO TX VALUES('65','5007',TO_TIMESTAMP('2003-NOV-07 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),14.69,261.61,'Cafe');
INSERT INTO TX VALUES('66','5006',TO_TIMESTAMP('2003-NOV-08 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-108.99,2267.33,'Groceries');
INSERT INTO TX VALUES('67','5006',TO_TIMESTAMP('2003-NOV-09 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-30.12,2237.21,'Gasoline');
INSERT INTO TX VALUES('69','5007',TO_TIMESTAMP('2003-NOV-11 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),125.00,386.61,'Dentist');
INSERT INTO TX VALUES('7','5005',TO_TIMESTAMP('2003-SEP-07 13:05:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-200.00,4000.00,'ATM Withdrawal');
INSERT INTO TX VALUES('70','5006',TO_TIMESTAMP('2003-NOV-12 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-675.00,1562.21,'Mortgage Payment');
INSERT INTO TX VALUES('72','5006',TO_TIMESTAMP('2003-NOV-13 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-261.61,1300.60,'Visa Payment');
INSERT INTO TX VALUES('73','5007',TO_TIMESTAMP('2003-NOV-14 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-261.61,125.00,'Payment');
INSERT INTO TX VALUES('75','5007',TO_TIMESTAMP('2003-NOV-15 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),24.00,149.00,'Drug Store');
INSERT INTO TX VALUES('76','5006',TO_TIMESTAMP('2003-NOV-16 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-67.98,1232.62,'Groceries');
INSERT INTO TX VALUES('78','5006',TO_TIMESTAMP('2003-NOV-17 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),2000.00,3232.62,'Paycheck Deposit');
INSERT INTO TX VALUES('79','5007',TO_TIMESTAMP('2003-NOV-18 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),32.95,181.95,'CDs');
INSERT INTO TX VALUES('8','5006',TO_TIMESTAMP('2003-SEP-08 13:06:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-200.00,2885.00,'Car Insurance');
INSERT INTO TX VALUES('81','5007',TO_TIMESTAMP('2003-NOV-20 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),14.10,196.05,'Sports Store');
INSERT INTO TX VALUES('82','5006',TO_TIMESTAMP('2003-NOV-21 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-99.30,3133.32,'Utility Bill');
INSERT INTO TX VALUES('84','5006',TO_TIMESTAMP('2003-NOV-21 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-675.00,2458.32,'Mortgage Payment');
INSERT INTO TX VALUES('85','5007',TO_TIMESTAMP('2003-NOV-22 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),23.98,220.03,'Garden Supply');
INSERT INTO TX VALUES('86','5005',TO_TIMESTAMP('2003-NOV-23 12:55:33.000000000','YYYY-MON-DD HH24:MI:SS.FF'),-100.00,3300.00,'ATM Withdrawal');
INSERT INTO TX VALUES('9','5007',TO_TIMESTAMP('2003-SEP-09 13:07:30.000000000','YYYY-MON-DD HH24:MI:SS.FF'),186.00,385.08,'Car Repair');
INSERT INTO CUSTOMER_ACCOUNT_XREF VALUES('200','5005');
INSERT INTO CUSTOMER_ACCOUNT_XREF VALUES('201','5005');
INSERT INTO CUSTOMER_ACCOUNT_XREF VALUES('200','5006');
INSERT INTO CUSTOMER_ACCOUNT_XREF VALUES('200','5007');
INSERT INTO CUSTOMER_ACCOUNT_XREF VALUES('201','5006');
INSERT INTO CUSTOMER_ACCOUNT_XREF VALUES('201','5007');
INSERT INTO CUSTOMER_ACCOUNT_XREF VALUES('200','5008');
INSERT INTO CUSTOMER_ACCOUNT_XREF VALUES('201','5008');
INSERT INTO NEXT_ID VALUES('account',5050);
INSERT INTO NEXT_ID VALUES('customer',202);
INSERT INTO NEXT_ID VALUES('tx',100);
