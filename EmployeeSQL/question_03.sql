-- 3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no, department.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM ((department
JOIN dept_manager ON dept_manager.dept_no = department.dept_no)
JOIN employees ON employees.emp_no = dept_manager.emp_no);
