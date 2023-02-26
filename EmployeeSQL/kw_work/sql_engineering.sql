-- ** DATA ENGINEERING ** --

-- CREATE DEPARTMENT TABLE
CREATE TABLE departments(
	dept_no VARCHAR(7) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);


--CREATE TITLES TABLE 
CREATE TABLE titles(
	emp_title_id VARCHAR(6),
	title VARCHAR(30),
	PRIMARY KEY (emp_title_id)
);


-- CREATE EMPLOYEE TABLE
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(8) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(3) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(emp_title_id)
);


-- CREATE EMPLOYEE DEPARTMENT TABLE
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


-- CREATE DEPARTMENT MANAGER TABLE
CREATE TABLE dept_manager(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



-- CREATE SALARIES TABLE
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--CHECK TABLE IMPORTS
--select * from departments
--select * from titles
--select * from employees
--select * from dept_emp
--select * from dept_manager
--select * from salaries
