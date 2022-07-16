--DELIVERABLE_1
-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT e.emp_no,e.first_name,e.last_name,t.title,t.from_date,t.end_date

-- Create a new table using the INTO clause.
INTO retirement_titles

-- Join both tables on the primary key.
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no=t.emp_no)

-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

SELECT * FROM retirement_titles;
-- Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt
WHERE (end_date='9999-01-01')
ORDER BY emp_no ASC, end_date DESC;

SELECT * FROM unique_titles;

-- Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
-- First, retrieve the number of titles from the Unique Titles table.
-- Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.

SELECT COUNT(emp_no) as "Count",title
INTO retiring_titles
FROM unique_titles
GROUP BY title
Order BY "Count" DESC;

--DELIVERABLE-2
-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (e.emp_no) e.emp_no,e.first_name,e.last_name,e.birth_date,de.from_date,de.end_date,t.title

-- Create a new table using the INTO clause.
INTO mentorship_eligibility
FROM employees as e
-- Join the Employees and the Department Employee tables on the primary key.
INNER JOIN dep_emp as de
ON(e.emp_no=de.emp_no)

-- Join the Employees and the Titles tables on the primary key.
INNER JOIN titles as t
ON(e.emp_no=t.emp_no)
-- Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the 
--employees whose birth dates are between January 1, 1965 and December 31, 1965.
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.end_date='9999-01-01')
-- Order the table by the employee number.
ORDER BY e.emp_no;

