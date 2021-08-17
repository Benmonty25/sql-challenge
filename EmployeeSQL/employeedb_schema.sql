--Create table for departments

create table departments(
	dept_no varchar primary key not null,
	dept_name varchar not null
);

--import departments.csv and view

select * from departments;

--Create table for titles

create table titles(
	title_id varchar primary key not null,
	title varchar not null
);

--Import titles.csv and view

select * from titles;

--Create table for employees

create table employees(
	emp_no int primary key not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles(title_id)
);

--import employees.csv and view

select * from employees;

--create table for department and employee ids

create table dept_emp(
	emp_no int,
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

--import dept_em.csv and view

select * from dept_emp;

--create table for department managers

create table dept_manager(
	dept_no varchar not null,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

--import dept_manager.csv and view

select * from dept_manager;

--create table of salaries

create table salaries(
	emp_no int not null,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);

--import salaries.csv and view

select * from salaries;
