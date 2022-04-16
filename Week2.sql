USE employees;
SELECT d.dept_name AS "Department", SUM(s.salary) AS "Salary Sum"
FROM departments d
INNER JOIN dept_emp de ON de.dept_no = d.dept_no
INNER JOIN salaries s ON s.emp_no = de.emp_no
WHERE d.dept_name = 'Marketing' AND de.from_date >= '1990-01-01' AND de.to_date <= '1992-12-31'
GROUP BY d.dept_name;

select employees.emp_no, employees.first_name, employees.last_name, employees.birth_date, titles.title from employees
INNER JOIN titles
ON titles.emp_no = employees.emp_no WHERE birth_date > '1965-01-01' limit 20;    

SELECT titles.title as "Title", avg(s.salary) as "Avg Salary" from titles
INNER JOIN salaries s ON s.emp_no = titles.emp_no
GROUP BY titles.title;
