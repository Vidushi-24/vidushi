select count(book_name),book_pub_author
from 
book_master
group by book_pub_author
HAVING COUNT(BOOK_PUB_AUTHOR)>1;

SELECT * FROM department_MASTER;
SELECT * FROM student_MASTER;
SELECT * FROM book_transactions;
SELECT S.Staff_Code,S.Staff_Name,D.DEPT_NAME
FROM STAFF_MASTER S,DEPARTMENT_MASTER D
GROUP BY S.STAFF_CODE,STAFF_NAME,D.DEPT_CODE,DEPT_NAME
HAVING COUNT(S.STAFF_NAME)>1;

select s.staff_code,s.staff_name,d.dept_name
from staff_master s
inner join book_transactions bt
on bt.staff_code=s.staff_code
inner join book_master b
on b.book_code=bt.book_code
where b.book_name > (select b.book_name from b.book_master count(b.book_name)>1);

SELECT S.Staff_Code,s.Staff_Name,D.DEPT_NAME
FROM STAFF_MASTER S,department_master d
GROUP BY s.staff_name
HAVING COUNT(s.STAFF_NAME)>1;

select s.student_code, s.student_name, d.dept_name
from department_master d
inner join student_master s
on s.dept_code=d.dept_code
group by s.dept_code
having max(s.dept_code);

