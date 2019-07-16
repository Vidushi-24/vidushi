desc department_master;
desc staff_master;
select * from staff_master;

insert all 
into department_master(dept_code,dept_name)
values(01,'sales')
into department_master(dept_code,dept_name)
values(02,'hr')
into department_master(dept_code,dept_name)
values(03,'mgr')
into department_master(dept_code,dept_name)
values(04,'production')
into department_master(dept_code,dept_name)
values(05,'stores')
select * from dual;

insert all 
into staff_master(staff_code,staff_name,design_code,dept_code,hiredate,staff_dob,staff_address,mgr_code,staff_sal)
values(101,'sales',1,001,to_date('10/02/1998','dd/mm/yyyy'),to_date('01/12/1970','dd/mm/yyyy'),'roorkee',0011,24000)
into staff_master(staff_code,staff_name,design_code,dept_code,hiredate,staff_dob,staff_address,mgr_code,staff_sal)
values(102,'production',2,002,to_date('22/11/2000','dd/mm/yyyy'),to_date('11/10/1969','dd/mm/yyyy'),'lucknow',0012,20000)
into staff_master(staff_code,staff_name,design_code,dept_code,hiredate,staff_dob,staff_address,mgr_code,staff_sal)
values(103,'hr',3,003,to_date('21/09/2010','dd/mm/yyyy'),to_date('13/06/1994','dd/mm/yyyy'),'chennai',0013,22500)
into staff_master(staff_code,staff_name,design_code,dept_code,hiredate,staff_dob,staff_address,mgr_code,staff_sal)
values(104,'stores',4,004,to_date('24/02/2000','dd/mm/yyyy'),to_date('21/04/1965','dd/mm/yyyy'),'jaipur',0014,30000)
select * from dual;

select sm.staff_code, sm.staff_name, sm.staff_sal, dm.dept_code, dm.dept_name
from department_master dm, staff_master sm
WHERE sm.dept_code=dm.dept_code
AND sm.staff_sal>20000;

select sm.staff_code as staff#, sm.staff_name as staff, dm.dept_name, sm.mgr_code as mgr#
from staff_master sm, department_master dm
where sm.dept_code=dm.dept_code;

desc student_master
desc book_transactions
insert all 
into student_master(student_code,student_name,dept_code,student_dob,student_address)
values(101,'vidushi',001,to_date('24/02/1998','dd/mm/yyyy'),'lucknow')
into student_master(student_code,student_name,dept_code,student_dob,student_address)
values(102,'soumya',002,to_date('23/02/1998','dd/mm/yyyy'),'ranchi')
into student_master(student_code,student_name,dept_code,student_dob,student_address)
values(103,'sanjali',003,to_date('19/09/1999','dd/mm/yyyy'),'agra')
into student_master(student_code,student_name,dept_code,student_dob,student_address)
values(104,'shushmita',004,to_date('04/05/2000','dd/mm/yyyy'),'patna')
select * from dual;

insert all
into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(1,'APTITUDE',2001,'R.S. AGGRAWAL')
into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(2,'DATA STRUCTURES',2010,'G.S. BALUJA')
into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(3,'CISCO',2015,'TODD LAMLE')
into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(4,'MATHS',1990,'R.D. SHARMA')
select * from dual;
select * from student_master;
select * from book_master;
select * from staff_master;
select * from book_transactions;

insert all
into book_transactions(book_code,student_code,staff_code,book_issue_date,book_expected_return_date,book_actual_return_date)
values(1,101,101,TO_DATE('05/07/2019','dd/mm/yyyy'),TO_DATE('10/07/2019','dd/mm/yyyy'),TO_DATE('20/07/2019','dd/mm/yyyy'))
into book_transactions(book_code,student_code,staff_code,book_issue_date,book_expected_return_date,book_actual_return_date)
values(2,102,103,TO_DATE('01/05/2019','dd/mm/yyyy'),TO_DATE('15/05/2019','dd/mm/yyyy'),TO_DATE('30/06/2019','dd/mm/yyyy'))
into book_transactions(book_code,student_code,staff_code,book_issue_date,book_expected_return_date,book_actual_return_date)
values(3,103,103,TO_DATE('15/01/2019','dd/mm/yyyy'),TO_DATE('25/01/2019','dd/mm/yyyy'),TO_DATE('20/02/2019','dd/mm/yyyy'))
into book_transactions(book_code,student_code,staff_code,book_issue_date,book_expected_return_date,book_actual_return_date)
values(4,104,104,TO_DATE('16/03/2019','dd/mm/yyyy'),TO_DATE('28/03/2019','dd/mm/yyyy'),TO_DATE('01/04/2019','dd/mm/yyyy'))
select * from dual;

select s.student_code, s.student_name, b.book_code, b.book_name
from book_master b
inner join book_transactions bt
on b.book_code=bt.book_code
inner join student_master s
on s.student_code=bt.student_code
where bt.book_expected_return_date in TO_CHAR(SYSDATE,'DD-MON-YY');

desc designation_master
insert all
into designation_master(design_code,design_name)
values(1,'manager')
into designation_master(design_code,design_name)
values(2,'assistant')
into designation_master(design_code,design_name)
values(3,'clerk')
into designation_master(design_code,design_name)
values(4,'engineer')
select * from dual;
select * from staff_master;

SELECT S.STAFF_CODE, S.STAFF_NAME, D.DESIGN_NAME, B.BOOK_CODE, BT.book_ISSUE_DATE
FROM BOOK_TRANSACTIONS bt, designation_master d, book_master b,staff_master s
where MONTHS_BETWEEN(TO_CHAR(bt.book_ISSUE_DATE,'DD-MON-YY'),TO_CHAR(SYSDATE,'DD-MON-YY'))<1;

--select s.staff_code, s.staff_name, d.designation_name, dept.dept_name, b.book_code, b.book_name, b.book_author
--from staff_master s, designation_master d, department_master dept, book_master b

insert all
into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(1,'JDBC',2001,'R.S. AGGRAWAL')
into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(1,'JAVA BASICS',2001,'R.D. SHARMA')
select * from dual;

SELECT Staff_Code, Staff_Name,STAFF_SAL
FROM STAFF_MASTER WHERE STAFF_SAL<(SELECT AVG(STAFF_SAL)
FROM STAFF_MASTER);
SELECT
    *
FROM BOOK_TRANSACTIONS;
SELECT
    *
FROM BOOK_MASTER;

insert all
into book_transactions
values(2,101,101,TO_DATE('05/07/2019','dd/mm/yyyy'),TO_DATE('10/07/2019','dd/mm/yyyy'),TO_DATE('20/07/2019','dd/mm/yyyy'))



SELECT * FROM STAFF_MASTER;
SELECT S.Staff_Code,S.Staff_Name,D.DEPT_NAME
FROM STAFF_MASTER S,DEPARTMENT_MASTER D
GROUP BY S.STAFF_CODE,STAFF_NAME,D.DEPT_CODE,DEPT_NAME
HAVING COUNT(S.STAFF_NAME)>1;