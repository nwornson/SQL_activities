drop table employees cascade;
drop table departments cascade;
drop table dept_manager cascade;
drop table dept_emp cascade;
drop table titles cascade;
drop table salaries cascade;

create table employees (
	emp_no int not null,	
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	gender varchar(1),
	hire_date date not null,
	primary key (emp_no)
);

create table departments (
	dept_no varchar(4) not null,
	dept_name varchar(40) not null,
	primary key (dept_no),
	unique (dept_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(4) not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),	
	primary key (emp_no,dept_no)
);

create table dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null,	
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),	
	primary key (emp_no,dept_no)	
);


create table salaries (
	emp_no int not null,
	salary varchar(30) not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no,from_date)
);

create table titles (
	emp_no int not null,
	title varchar(30) not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no,title,from_date)
);

