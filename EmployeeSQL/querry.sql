--List the following details of each employee: employee number, last name, first name, sex, and salary.
select employee.emp_no, last_name, first_name, sex, salary 
from employee
join salaries 
on (employee.emp_no = salaries.emp_no);

--List first name, last name, and hire date for employees who were hired in 1986.
select  last_name, first_name, hire_date 
from employee
where hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_no, dept_name, emp_no, last_name, first_name
from departments 
join dept_manager on (departments.dept_no = dept_manager.dept_no)
join employee on (dept_manager.emp_no = employee.emp_no)
--List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name
from employee 
join dept_emp on (employee.emp_no = dept_emp.emp_no) 
join departments on ( dept_emp.dept_no = departments.dept_no)

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select  first_name, last_name, sex
from employee 
where first_name = 'Hercules' AND last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
 select emp_no, last_name, fist_name, dept_name 
 from employee 
 join departments on (employee.emp_no = departments.emp_no)
 where dept_name = Sales 

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp_no, last_name, fist_name, dept_name 
 from employee 
 join departments on (employee.emp_no = departments.emp_no)
where departments.dept_name IN ('Sales', 'Development')

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, COUNT(last_name) as last_name_count from employees
GROUP BY last_name 
GROUP BY last_name_count DESC
