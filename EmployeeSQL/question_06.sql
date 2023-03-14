-- 6.List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no, employees.last_name, employees.first_name 
FROM ((dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no)
JOIN department ON department.dept_no = dept_emp.dept_no)
WHERE department.dept_name = 'Sales';