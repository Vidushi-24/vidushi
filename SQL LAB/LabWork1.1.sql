select * from staff_master;
select staff_name,design_code from staff_master
where hiredate>'01-JAN-2003'
and staff_sal between 12000 and 25000;

insert into staff_master
values(105,'sales',1,1,to_date('01-FEB-2003','dd-mon-yyyy'),to_date('15-JUL-1975','DD-MON-YYYY'),'kolkata',11,15000);
insert into staff_master
values(106,'hr',3,3,to_date('01-DEC-2007','dd-mon-yyyy'),to_date('22-SEP-1980','DD-MON-YYYY'),'hyderabad',13,18900);
desc staff_master;

select staff_code,staff_name,dept_code from staff_master
where  (MONTHS_BETWEEN(SYSDATE,HIREDATE))>=216
order by hiredate desc;

insert into staff_master(staff_code,staff_name,design_code,dept_code,hiredate,staff_dob,staff_address,staff_sal)
values(107,'stores',2,2,to_date('11-NOV-2011','dd-mon-yyyy'),to_date('02-OCT-1989','DD-MON-YYYY'),'bangalore',21000);

select * from staff_master
where mgr_code is null;

insert all
into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(3,'&C++&',2012,'R.S. AGGRAWAL')
into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(3,'JAVA&BASICS',2009,'R.D. SHARMA')
select * from dual;

select * from book_master
where book_pub_year between 2001 and 2004
and book_name like '%"&"%';

insert into book_master(book_code,book_name,book_pub_year,book_pub_author)
values(7,'JAVA_BASICS',2009,'Raju shree');

select staff_name from staff_master
where STAFF_NAME LIKE '%_%';