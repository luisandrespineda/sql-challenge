Create Table departments(
	dept_no varchar(10) NOT NULL Primary Key,
	dept_name varchar(50)
);

CREATE TABLE dept_emp (
    emp_no integer NOT NULL,
    dept_no varchar(10) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Create Table dept_managers(
	dept_no varchar(10) NOT NULL references departments(dept_no),
	emp_no integer NOT NULL references employees(emp_no)
);

Create Table employees(
	emp_no integer NOT NULL Primary Key,
	emp_title_id varchar(10) NOT NULL references titles(title_id),
	birth_date date,
	first_name varchar(50),
	last_name varchar(50),	
	sex varchar(1),	
	hire_date date
);

Create Table salaries(
	emp_no integer NOT NULL Primary Key References employees(emp_no),
	salaries float
);

CREATE TABLE titles (
    title_id varchar(10) NOT NULL PRIMARY KEY,
    title varchar(50)
);
