-- 4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM ((dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no)
JOIN department ON department.dept_no = dept_emp.dept_no)
ORDER BY employees.emp_no ASC;