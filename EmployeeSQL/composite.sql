-- 1.List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM salaries
JOIN employees ON
employees.emp_no=salaries.emp_no
ORDER BY emp_no ASC;

-- 2.List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY hire_date ASC;

-- 3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no, department.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM ((department
JOIN dept_manager ON dept_manager.dept_no = department.dept_no)
JOIN employees ON employees.emp_no = dept_manager.emp_no);

-- 4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM ((dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no)
JOIN department ON department.dept_no = dept_emp.dept_no)
ORDER BY employees.emp_no ASC;

-- 5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6.List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no, employees.last_name, employees.first_name 
FROM ((dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no)
JOIN department ON department.dept_no = dept_emp.dept_no)
WHERE department.dept_name = 'Sales';

-- 7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, department.dept_name 
FROM ((dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no)
JOIN department ON department.dept_no = dept_emp.dept_no)
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development';

-- 8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) AS "frequency_counts"
FROM employees 
GROUP BY last_name
ORDER BY frequency_counts DESC;