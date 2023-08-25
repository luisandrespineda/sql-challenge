
--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, s.salaries
FROM employees as e
JOIN salaries AS s
  ON e.emp_no = s.emp_no;
 
 --List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
d.dept_no AS department_number,
d.dept_name AS department_name,
dm.emp_no AS employee_number,
e.last_name AS last_name,
e.first_name AS first_name
FROM departments d
INNER JOIN dept_managers dm ON d.dept_no = dm.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select
de.dept_no as department_number,
e.emp_no as employee_number,
e.last_name as last_name,
e.first_name as first_name,
d.dept_name as department_name
FROM employees e
LEFT JOIN dept_emp de on e.emp_no = de.emp_no
LEFT JOIN departments d on de.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' and left(last_name,1) = 'B'

--List each employee in the Sales department, including their employee number, last name, and first name.
Select
e.emp_no as employee_number,
e.last_name as last_name,
e.first_name as first_name
from employees e
left JOIN dept_emp de on e.emp_no = de.emp_no
LEFT JOIN departments d on de.dept_no = d.dept_no
Where dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select
e.emp_no as employee_number,
e.last_name as last_name,
e.first_name as first_name,
d.dept_name as department_name
from employees e
left JOIN dept_emp de on e.emp_no = de.emp_no
LEFT JOIN departments d on de.dept_no = d.dept_no
Where dept_name = 'Sales'
	or dept_name='Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC, last_name;



