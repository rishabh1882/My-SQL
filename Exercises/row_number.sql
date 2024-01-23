use employees;
select * from employees;
## row number
select emp_no, salary, row_number() over() as Row_num
from salaries;
select emp_no, salary, row_number() over(partition by emp_no) as Row_num
from salaries;
select emp_no, salary, row_number() over(partition by emp_no order by salary desc) as Row_num
from salaries;