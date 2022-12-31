-- DROP TABLE employees

CREATE TABLE IF NOT EXISTS employees(
	emp_no INT NOT NULL PRIMARY KEY,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	hire_date DATE NOT NULL
	
);

SELECT * FROM employees


-- DROP TABLE titles
CREATE TABLE IF NOT EXISTS titles(
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)

);

SELECT * FROM titles;


-- Deliverable 1, create retirement tables

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_table
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT * FROM retirement_table


----Retrieve the employee number, first and last name, title columns from the Retirement Titles
-- from UNique Titles table

SELECT e.emp_no, e.first_name, e.last_name, t.title
INTO unique_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY title DESC;

SELECT * FROM unique_titles;

-- First, retrieve the number of titles from the Unique Titles table.
-- Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.

SELECT COUNT(ut.title)
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDEr BY COUNT(ut.title) DESC;

SELECT * FROM retiring_titles
















