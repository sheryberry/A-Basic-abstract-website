CREATE table CUSTOMER(
CUST_ID int primary key auto_increment,
CUST_NAME varchar(100) NOT NULL,
CUST_PHONE   int(15),
CUST_ADDR varchar(200),
CUST_DOB  DATE NOT NULL,
CUST_MAIL varchar(100) NOT NULL,
CUST_USERNAME varchar(100),
CUST_PASS varchar(100)
);
CREATE TABLE PROJECTS(
PRJ_ID int PRIMARY KEY auto_increment,
PRJ_NAME varchar(100) NOT NULL,
PRJ_PLACE varchar(200),
PROJ_DESC varchar(1000)
);
CREATE TABLE CUST_PROJ(
CUST_ID int UNIQUE NOT NULL,
PRJ_ID  int UNIQUE NOT NULL,
JOINED  varchar(10),
FEEDBACK varchar(3000),
CONSTRAINT PK_CUST_PROJ PRIMARY KEY (CUST_ID,PRJ_ID),
CONSTRAINT FK_CUST_PROJ1 FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID),
CONSTRAINT FK_CUST_PROJ2 FOREIGN KEY (PRJ_ID) REFERENCES PROJECTS(PRJ_ID)
);
CREATE TABLE TASKS(
TASK_ID int PRIMARY KEY auto_increment ,
TASK_DESC varchar(3000)
);
CREATE TABLE EMPLOYEE(
EMP_ID int PRIMARY KEY auto_increment,
EMP_NAME varchar(200) NOT NULL,
EMP_DOB DATE NOT NULL,
EMP_MAIL varchar(100) NOT NULL,
EMP_SALARY int NOT NULL,
EMP_PHONE int,
EMP_MGR_ID int ,
EMP_POS varchar(100),
EMP_USERNAME varchar(100),
EMP_PASS varchar(100)

);
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMP_MGR FOREIGN KEY (EMP_MGR_ID) REFERENCES EMPLOYEE(EMP_ID);
CREATE TABLE MTE(
TASK_ID int,
MGR_ID int,
EMP_ID int,
PRJ_ID int,
TASK_ASSIGN_DT DATE,
TASK_DUE_DT DATE,
CONSTRAINT PK_MTE PRIMARY KEY (TASK_ID,MGR_ID,EMP_ID,PRJ_ID),
CONSTRAINT FK_MTE_TASK FOREIGN KEY (TASK_ID) REFERENCES TASKS(TASK_ID),
CONSTRAINT FK_MTE_MGR FOREIGN KEY (MGR_ID) REFERENCES EMPLOYEE(EMP_ID),
CONSTRAINT FK_MTE_PRJ FOREIGN KEY (PRJ_ID) REFERENCES PROJECTS(PRJ_ID),
CONSTRAINT FK_MTE_EMP FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);
CREATE TABLE ATT_SHEET(
SHEET_ID int PRIMARY KEY auto_increment,
SHEET_START_DT timestamp,
SHEET_END_DT timestamp,
EMP_ID int,
CONSTRAINT FK_SHEET_EMP FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);