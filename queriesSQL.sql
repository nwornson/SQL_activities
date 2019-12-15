-- Q1
select a.emp_no,a.last_name,a.first_name,a.gender,b.salary
from employees as a
	inner join salaries as b
on a.emp_no = b.emp_no;
-- Q2
-- filter on date
 -- can't use * for some reason
select first_name,last_name from employees 
where hire_date between '1986-01-01' and '1986-12-31';

-- Q3
select departments.dept_name,departments.dept_no,
dept_manager.emp_no,from_date,to_date,
employees.last_name,employees.first_name
from departments 
inner join dept_manager
	on (departments.dept_no = dept_manager.dept_no)
inner join employees
	on dept_manager.emp_no = employees.emp_no;


-- Q4 
select dept_emp.emp_no,dept_emp.dept_no,departments.dept_name,employees.first_name,employees.last_name
from dept_emp	
inner join departments
	on dept_emp.dept_no = departments.dept_no
inner join employees
	on dept_emp.emp_no = employees.emp_no;	
	
-- Q5
select first_name,last_name
from employees
where first_name = 'Hercules' 
and last_name 
like 'B%';

--Q6
-- the where statement is used in the inner-join
select a.dept_name,b.emp_no,c.first_name,c.last_name
from departments as a
inner join dept_emp as b
	on a.dept_no = b.dept_no
	and a.dept_name in ('Production','Development')
inner join employees as c
	on b.emp_no = c.emp_no;
	
select count(last_name),last_name 
from employees
group by last_name
order by count(last_name) desc;
