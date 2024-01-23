-- WINDOW FUNCTIONS IN SQL
-- 1. row_number()
use practice;
select * from movies;
select * from self_made;
select *, row_number() over(partition by dept order by salary desc) as row_num from self_made;
use employees;
select * from salaries;
select emp_no, salary, row_number() over() as row_num from salaries;
select emp_no, salary, row_number() over(partition by emp_no order by salary desc ) as row_num from salaries;
-- To fetch the max salary using the above partition and window function;
select a.emp_no, max(salary) as max_salary from (
select emp_no, salary, row_number() over(partition by emp_no order by salary desc ) as row_num from salaries) a group by emp_no;
-- To fetch the max salary without window function
select a.emp_no, max(salary) as max_salary from (
select emp_no, salary from salaries) a group by emp_no;

-- rank and dense rank
-- it gives rank, just like row number, and dense rank is useful when 2 or more values are same in a column;

 select emp_no, salary, lag(salary) over() as lag_salary from salaries;
 select emp_no, salary, lead(salary) over() as lead_salary from salaries;
select * from salaries;
select *, sum(salary) over(partition by emp_no) sum_salary from salaries;  
select * from employees;
select emp_no, first_name, last_name, 
if(gender='M','Male','Female') as gender from employees;

## Case statement
select emp_no, first_name, last_name,
case gender when 'M' then 'Male' else 'Female' end as gender from employees;
select * from salaries;
select emp_no, salary,
case when salary < 65000 then'Salary less than 65k'
when salary > 65000 then 'Salary greater than 65k'
end as Salary_bracket
from salaries;
