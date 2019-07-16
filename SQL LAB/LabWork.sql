create table Emp
(
Empno NUMBER(4) NOT NULL,
Ename varchar2(10),
job varchar2(9),
mgr number(4),
HireDate Date,
Sal Number(7,2),
Comm Number(7,2),
Deptno NUMBER(2)
);

create table Designation_Master
(
Design_code NUMBER(3) not null,
Design_name VARCHAR(50)
);

create table Department_Master
(
Dept_code Number(2) not null,
Dept_name VARCHAR(50)
);

create table Student_Master
(
Student_code number(6) not null,
student_name varchar2(50) not null,
dept_code number(2),
student_dob date,
student_address varchar(240)
);

create table student_marks
(
student_code number(6),
student_year number not null,
subject1 number(3),
subject2 number(3),
subject3 number(3)
);

create table staff_master
(
staff_code number(8) not null,
staff_name VARCHAR(50) not null,
design_code number,
dept_code number,
hiredate date,
staff_dob date,
staff_address VARCHAR(240),
mgr_code number(8),
staff_sal number(10,2)
);

create table book_master
(
book_code number(10) not null,
book_name varchar(50) not null,
book_pub_year number,
book_pub_author varchar(50) not null
);

create table book_transactions
(
book_code number,
student_code number,
staff_code number,
book_issue_date date not null,
book_expected_return_date date not null,
book_actual_return_date date
);

create table customer
(
customerid number(5),
cus_name VARCHAR(20),
address1 varchar(30),
address2 varchar(30)
);

alter table customer
modify
cus_name varchar(30);

alter table customer
rename COLUMN cus_name to customername;

alter table customer
modify
customername not null;

alter table customer
add
(
gender VARCHAR2(1),
age number,
phone number(10)
);

alter table customer
rename TO cust_table;

INSERT all 
INTO cust_table (customerid,customername,address1,address2,gender,age,phone)
values(1000, 'Allen','#115Chicago', '#115Chicago', 'M', 25, 7878776)
INTO cust_table (customerid,customername,address1,address2,gender,age,phone)
values(1001, 'George', '#116 France', '#116 France', 'M', 25, 434524)
INTO cust_table (customerid,customername,address1,address2,gender,age,phone)
values(1002, 'Becker', '#114 New York', '#114 New York', 'M', 45, 431525)
select * from dual;

alter table cust_table
add constraint custID_prim primary key(customerid);

INSERT INTO cust_table
(customerid,customername,address1,address2,gender,age,phone)
values
(1002, 'John', '#114 Chicago', '#114 Chicago', 'M', 45, 439525);

alter table cust_table
disable constraint custid_prim;

INSERT all 
INTO cust_table (customerid,customername,address1,address2,gender,age,phone)
values(1002, 'Becker', '#114 New York', '#114 New york' , 'M', 45, 431525)
INTO cust_table (customerid,customername,address1,address2,gender,age,phone)
values(1003, 'Nanapatekar', '#115 India', '#115 India' , 'M', 45, 431525)
select * from dual;

alter table cust_table
enable constraint custid_prim;

alter table cust_table
drop constraint custid_prim;

INSERT all 
INTO cust_table (customerid,customername,address1,address2,gender,age,phone)
values(1002, 'Becker', '#114 New York', '#114 New york' , 'M', 45, 431525)
INTO cust_table (customerid,customername,address1,address2,gender,age,phone)
values(1003, 'Nanapatekar', '#115 India', '#115 India' , 'M', 45, 431525)
select * from dual;

truncate table cust_table;

alter table cust_table
add
(
e_mail varchar(20)
);

alter table cust_table
drop column e_mail;

create table suppliers
(
customerid number(5),
cus_name VARCHAR(20),
address1 varchar(30),
address2 varchar(30),
phoneno number(10)
);

alter table suppliers
rename column customerid to suppid;
alter table suppliers
rename column cus_name to sname;
alter table suppliers
rename column address1 to addr1;
alter table suppliers
rename column address2 to addr2;
alter table suppliers
rename column phoneno to contactno;

drop table suppliers;

create table customerMaster
(
customerid number(5),
customername varchar(30) not null,
address1 varchar(30) not null,
address2 varchar(30),
gender varchar(1),
age number(3),
phoneno number(10),
constraint custid_pk primary key(customerid)
);

create table AccountMaster
(
customerid number(5),
accountnumber number(10,2),
accounttype char(3),
ledgerbalance number(10,2) not null,
constraint Acc_PK primary key(accountnumber)
);

alter table AccountMaster
add constraint cust_acc foreign key(customerid) references CustomerMaster(customerid);

INSERT all 
INTO CustomerMaster (customerid,customername,address1,address2,gender,age,phoneNo)
values(1000, 'Allen', '#115 Chicago', '#115 Chicago', 'M', 25, 7878776)
INTO CustomerMaster (customerid,customername,address1,address2,gender,age,phoneNo)
values(1001, 'George', '#116 France', '#116 France', 'M', 25, 434524)
INTO CustomerMaster (customerid,customername,address1,address2,gender,age,phoneNo)
values(1002, 'Becker', '#114 New York', '#114 New York', 'M', 45, 431525)
SELECT * FROM DUAL;

alter table AccountMaster
add constraint chl_acctype
check(accounttype in ('NRI','IND'));

alter table AccountMaster
add constraint Balance_Check check(ledgerbalance >5000);

alter table AccountMaster
add constraint cust_acc foreign key(customerid) references CustomerMaster(customerid)on delete cascade;

create table AcountDetails as select * from AccountMaster;

create view Acc_view (CustomerCode,AccountNumber, Type, Balance) AS SELECT
customerid, accountnumber, accounttype, ledgerbalance from AccountMaster;

create view vAccs_Dtls as select * from AccountMaster
where accounttype='IND' and ledgerbalance>10000;

create view accsvw10 AS SELECT * FROM AccountMaster with read only;

create sequence Seq_Dept
minvalue 40
maxvalue 200
increment by 10
nocache;

insert into Department_Master values (Seq_Dept.nextval,100);
insert into Department_Master values (Seq_Dept.nextval,200);
insert into Department_Master values (Seq_Dept.nextval,300);

drop sequence Seq_dept;

CREATE INDEX no_name on emp(empno);
select * from emp;

create SYNONYM synEmp for emp;

select * from synemp;

create index idx_emp_hiredate on emp(hiredate);

create sequence Seq_Emp
start with 1001
minvalue 1001
increment by 1 cache 1001;

insert into emp values (SEQ_EMP.nextval,'vidu','se',1234,to_date('10/01/2019','dd/mm/yyyy'),1000,5800,01);
insert into emp values (SEQ_EMP.nextval,'riya','analy',1432,to_date('21/12/2014','dd/mm/yyyy'),90000,58430,02);
insert into emp values (SEQ_EMP.nextval,'tina','asso',1542,to_date('11/09/2018','dd/mm/yyyy'),23000,42100,03);