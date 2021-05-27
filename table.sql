create table xx_dummy1(
first_name varchar2(10),
last_name varchar2(10),
salary number,
hire_date date
);
/
insert into xx_dummy1 values('mohan','raj',15500,'19-12-2011');
/
select * from xx_dummy1;
/
set serveroutput on
/
select first_name from xx_dummy1 where last_name='raj';
/
declare
v_name varchar2(10);
begin
select first_name into v_name from xx_dummy1 where last_name='raj';
dbms_output.put_line('welcome');
exception
when no_data_found then
dbms_output.put_line('there is no employee in that last name');
when too_many_rows then
dbms_output.put_line('there are more than one employee in that name...');
--dbms_output.put_line(sqlerrm);
end;