select * from customer;
insert all
into customermaster
values(6000,'John','#115 Chicago','#115 Chicago','M', 25, 7878776)
into customermaster
values(6001,'Jack','#116 France','#116 France','M', 25, 434524)
into customermaster
values(6002,'James','#114 New York','#114 New York','M', 45, 431525)
select * from dual;
desc customermaster;

savepoint sp1;

insert into customermaster
values(6003,'John','#114 Chicago','#114 Chicago','M',45,439525);

rollback sp1;