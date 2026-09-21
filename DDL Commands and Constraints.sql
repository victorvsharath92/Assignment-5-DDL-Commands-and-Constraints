CREATE DATABASE employee;
USE employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE location (
    location_id INT,
    location VARCHAR(30)
);
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
ALTER TABLE employees
ADD email VARCHAR(100);
ALTER TABLE employees
MODIFY designation VARCHAR(150);
ALTER TABLE employees
DROP COLUMN age;
ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE departments TO Departments_Info;
RENAME TABLE location TO Locations;
TRUNCATE TABLE employees;
DROP TABLE employees;
DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES location(location_id)
);
INSERT INTO departments (department_id, department_name)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');
INSERT INTO location (location)
VALUES
('Kochi'),
('Kottayam'),
('Pathanamthitta');
INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(101, 'Arun Kumar', 'M', 25, '2023-01-10', 'Software Developer', 2, 1, 45000.00),
(102, 'Anitha S', 'F', 28, '2022-06-15', 'HR Executive', 1, 2, 40000.00),
(103, 'Rahul Raj', 'M', 30, '2021-03-20', 'Finance Analyst', 3, 3, 55000.00);
SELECT * FROM employees;
INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(104, NULL, 'M', 25, '2024-01-10', 'Developer', 2, 1, 40000);
INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(104, 'Vishnu Raj', 'M', 16, '2024-01-10', 'Developer', 2, 1, 40000);
INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(104, 'Vishnu Raj', 'X', 25, '2024-01-10', 'Developer', 2, 1, 40000);
INSERT INTO departments
(department_id, department_name)
VALUES
(4, 'HR');
INSERT INTO departments
(department_id, department_name)
VALUES
(1, 'Marketing');
INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(104, 'Vishnu Raj', 'M', 25, '2024-01-10', 'Developer', 99, 1, 40000);
INSERT INTO location (location)
VALUES ('Kochi');
INSERT INTO location (location)
VALUES (NULL);