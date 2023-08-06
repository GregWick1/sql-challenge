select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;

--List the employee number, last name, first name, sex, and salary of each employee.
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
From salaries s
Inner Join employees e ON
s.emp_no = e.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
Where hire_date >= '1986-01-01'
And hire_date <= '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
From dept_manager m
Inner Join departments d On
d.dept_no = m.dept_no
Inner Join employees e ON
e.emp_no = m.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select m.dept_no, m.emp_no, e.last_name, e.first_name, d.dept_name
From dept_emp m
Inner Join employees e On
e.emp_no = m.emp_no
Inner Join departments d On
d.dept_no = m.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
From employees
Where first_name = 'Hercules'
AND last_name Like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
Select e.emp_no, e.last_name, e.first_name
From dept_emp m
Inner Join departments d On
d.dept_no = m.dept_no
Inner Join employees e On
e.emp_no = m.emp_no
Where d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
From dept_emp m
Inner Join departments d On
d.dept_no = m.dept_no
Inner Join employees e On
e.emp_no = m.emp_no
Where d.dept_name = 'Sales'
OR d.dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, Count(last_name) As last_name_count
From employees
Group By last_name
Order By last_name_count Desc;


