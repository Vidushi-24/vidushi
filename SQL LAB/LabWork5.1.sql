Create table employee as select * from emp where 1=3;
select * from employee;
desc employee;

insert all
into employee(empno,ename,sal,deptno)
values(7369,'SMITH',800,20)
into employee(empno,ename,sal,deptno)
values(7499,'ALLEN',160,30)
into employee(empno,ename,sal,deptno)
values(7521,'WARD',1250,30)
into employee(empno,ename,sal,deptno)
values(7566,'JONES',2975,20)
into employee(empno,ename,sal,deptno)
values(7654,'MARTIN',1250,30)
into employee(empno,ename,sal,deptno)
values(7698,'BLAKE',2850,30)
into employee(empno,ename,sal,deptno)
values(7782,'CLARK',2450,10)
into employee(empno,ename,sal,deptno)
values(7788,'SCOTT',3000,20)
into employee(empno,ename,sal,deptno)
values(7839,'KING',5000,10)
into employee(empno,ename,sal,deptno)
values(7844,'TURNER',1500,30)
into employee(empno,ename,sal,deptno)
values(7876,'ADAMS',1100,20)
into employee(empno,ename,sal,deptno)
values(7900,'JAMES',950,30)
into employee(empno,ename,sal,deptno)
values(7902,'FORD',3000,20)
into employee(empno,ename,sal,deptno)
values(7934,'MILLER',1300,10)
select * from dual;

update employee 
set job=(select job from employee
where empno=7788),deptno=(select deptno 
from employee where empno=7788)
where empno=7698;

delete from department_master
where dept_name like '%sales%';

update employee
set empno=7788
where empno=7698;

insert into employee 
values (1000,'Allen', 'Clerk',1001,'12-jan-01', 3000, 2,10);
insert into employee 
values (1001,'George', 'analyst', null, '08 Sep 92', 5000,0, 10);
insert into employee
values (1002, 'Becker', 'Manager', 1000, '4 Nov 92', 2800,4, 20);
insert into employee 
values (1003, 'Bill', 'Clerk', 1002, '4 Nov 92',3000, 0, 20);