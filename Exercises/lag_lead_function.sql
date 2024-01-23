use employees;
select * from employees;
## row number
select emp_no, salary, row_number() over() as Row_num
from salaries;
select emp_no, salary, row_number() over(partition by emp_no) as Row_num
from salaries;
select emp_no, salary, row_number() over(partition by emp_no order by salary desc) as Row_num
from salaries;
SELECT 
    a.emp_no, MAX(salary) AS max_salary
FROM
    (SELECT 
        emp_no, salary
    FROM
        salaries) a
GROUP BY emp_no;

## Lag and Lead functions
select emp_no, salary, lag(salary) over() as lag_salary from salaries;
 select emp_no, salary, lead(salary) over() as lead_salary from salaries;
select * from salaries;
select *, sum(salary) over(partition by emp_no) sum_salary from salaries;  
select * from employees;
select emp_no, first_name, last_name, 
if(gender='M','Male','Female') as gender from employees;
