-- answer 5
SELECT department, COUNT(*) AS number_of_employ
FROM employees
GROUP BY department

-- answer 4
SELECT * 
FROM employees
WHERE department = 'Engineering'

-- answer 3
SELECT first_name, last_name
FROM employees
ORDER BY last_name 

-- answer 2
SELECT first_name, last_name
FROM employees
WHERE age >= 20;

-- answer 1
SELECT * FROM employees;
