-- 8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) AS "frequency_counts"
FROM employees 
GROUP BY last_name
ORDER BY frequency_counts DESC;