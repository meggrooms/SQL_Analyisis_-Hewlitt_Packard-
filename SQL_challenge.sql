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


-- DROP TABLE retirement_table
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_table
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT * FROM retirement_table



----Retrieve the employee number, first and last name, title columns from the Retirement Titles from Unique Titles table
-- DROP TABLE unique_titles

SELECT e.emp_no, e.first_name, e.last_name, t.title
INTO unique_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY title DESC;

SELECT * FROM unique_titles;


-- Retrieve the number of titles from the Unique Titles table.
-- Create a Retiring Titles table to hold the required information.
-- Group the table by title, Sort the count column in descending order.
-- DELETE TABLE retiring_titles

SELECT COUNT(ut.title)
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDEr BY COUNT(ut.title) DESC;

SELECT * FROM retiring_titles


-- Deliverable 2, employees eligible for mentorship program

-- *Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- *Retrieve the from_date and to_date columns from the Department Employee table.
-- *Retrieve the title column from the Titles table.
-- *Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows
--			defined by the ON () clause.
-- *Create a new table using the INTO clause.
-- *Join the Employees and the Department Employee tables on the primary key.
-- *Join the Employees and the Titles tables on the primary key.

-- *Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns
-- 			to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.

-- Order the table by the employee number.

SELECT * FROM employees


CREATE TABLE IF NOT EXISTS dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	
);

select * FROM dept_emp



SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-12-31')
ORDER BY e.emp_no ASC, de.from_date DESC

SELECT * FROM mentorship_eligibility



SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO mentorship_eligibilty
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, de.from_date DESC;

SELECT * FROM mentorship_eligibilty













