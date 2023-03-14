-- 7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, department.dept_name 
FROM ((dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no)
JOIN department ON department.dept_no = dept_emp.dept_no)
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development';