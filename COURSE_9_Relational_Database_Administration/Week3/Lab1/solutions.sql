--Exercise 4: Use an UNION ALL Clause

--1.- To start, let's run this query:
SELECT * FROM employees WHERE first_name LIKE 'C%' OR last_name LIKE 'C%';

--2.- Check using the EXPLAIN command to see how many rows are being scanned!
EXPLAIN SELECT * FROM employees WHERE first_name LIKE 'C%' OR last_name LIKE 'C%';

--3.- Try adding an index to both the first_name and last_name columns.
CREATE INDEX first_name_index ON employees(first_name);
CREATE INDEX last_name_index ON employees(last_name);

--4.- Great! With your indexes now in place, we can re-run the query:
SELECT * FROM employees WHERE first_name LIKE 'C%' OR last_name LIKE 'C%';
--Let's also see how many rows are being scanned:
EXPLAIN SELECT * FROM employees WHERE first_name LIKE 'C%' OR last_name LIKE 'C%';

--5.- Let's use the UNION ALL clause to improve the performance of this query.
SELECT * FROM employees WHERE first_name LIKE 'C%' UNION ALL SELECT * FROM employees WHERE last_name LIKE 'C%';

--Exercise 5: Be SELECTive

--Practice Exercise 1
--1.-First, let's select all the rows and columns from this table.
SELECT * FROM salaries;
--2.-Now, let's see if there's a way to optimize this query. Since we only want 
--to see how much each employee earns, then we can just select a few columns instead 
--of all of them. Which ones would you select?

SELECT emp_no, salary FROM salaries;
EXPLAIN SELECT emp_no, salary FROM salaries;

--Practice Exercise 2
--Practice by selecting only the necessary columns and run the query!
SELECT emp_no, title FROM titles;
