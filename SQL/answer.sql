-- answer 20
SELECT name, price, created_at FROM (
    SELECT name, price, created_at FROM products
    UNION ALL
    SELECT name, price, created_at FROM services
) AS products_and_services
WHERE created_at < ?
ORDER BY created_at DESC
LIMIT ?;

-- answer 19
SELECT name, created_at FROM (
    SELECT name, created_at FROM products
    UNION ALL
    SELECT name, created_at FROM services
) AS products_and_services
ORDER BY created_at DESC;

-- answer 18
SELECT name, price FROM products
UNION
SELECT name, price FROM services;

-- answer 17
SELECT * FROM users
WHERE age >= 30
LIMIT 2;

-- answer 16
SELECT * FROM users
ORDER BY age ASC;

-- answer 15
SELECT * FROM users
WHERE age >= 30;

-- answer 14
SELECT name FROM users;

-- answer 13
SELECT * FROM users;

-- answer 12
SELECT 
    d.department_name,
    MAX(e.salary) AS max_salary,
    COUNT(
        CASE
            WHEN e.salary = MAX(e.salary) THEN e.salary
            ELSE NULL
        END
    )  AS max_salary_employees_count
FROM employees AS e
JOIN department AS d ON e.department_id = d.id
GROUP BY d.department_name;

-- answer 10
SELECT
    d.department_name,
    AVG(
        CASE
            WHEN gender = 'M' THEN salary
            ELSE NULL
        END        
    ) AS avg_male_salary,
    AVG(
        CASE
            WHEN gender = 'F' THEN salary
            ELSE NULL
        END
    ) AS avg_female_salary
FROM employees AS e
JOIN departments AS d ON e.department_id = d.id
GROUP BY d.department_name;

-- answer 9
SELECT
    SUM(CASE WHEN gender = 'M' THEN 1 ELSE 0 END) as male_count, 
    SUM(CASE WHEN gender = 'F' THEN 1 ELSE 0 END) as female_count
FROM employees;

-- answer 8
SELECT COUNT(*) as new_employees_count
FROM employees
WHERE DATE_PART('year', hire_date) = DATE_PART('year', CURRENT_DATE)
AND DATE_PART('month', hire_date) = DATE_PART('month', CURRENT_DATE);

-- answer 7
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM employees AS e
JOIN departments AS d ON e.department_id = d.id
GROUP BY d.department_name;

-- answer 6
SELECT e.first_name, e.last_name, d.department_name
FROM employees AS e
JOIN departments AS d ON e.department_id = d.id;

-- answer 5
SELECT department, COUNT(*) AS number_of_employ
FROM employees
GROUP BY department;

-- answer 4
SELECT * 
FROM employees
WHERE department = 'Engineering';

-- answer 3
SELECT first_name, last_name
FROM employees
ORDER BY last_name;

-- answer 2
SELECT first_name, last_name
FROM employees
WHERE age >= 20;

-- answer 1
SELECT * FROM employees;
