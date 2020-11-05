DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;


CREATE TABLE department (
  dep_id int NOT NULL AUTO_INCREMENT,PRIMARY KEY (dep_id),
  dep_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
 rol_id int NOT NULL AUTO_INCREMENT,PRIMARY KEY (rol_id),
  title  VARCHAR(30) NOT NULL, 
  salary DECIMAL(10,2) NOT NULL, 
  department_id  INT NOT NULL
  );

CREATE TABLE employee (
  emp_id int NOT NULL AUTO_INCREMENT,PRIMARY KEY (emp_id),
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL, 
  role_id INT NOT NULL,
  managed_by_id INT
);

INSERT INTO department (dep_name)
VALUES 
("sales"), 
("it"), 
("general");

INSERT INTO roles (title, salary, department_id)
VALUES 
("sales manager", 21.40, 1),
("sales assistant", 13.90, 1),
("sales janitor", 11.50, 1),
("it manager", 21.20, 2),
("it assistant", 13.45, 2),
("it janitor", 11.25, 2),
("general manager", 21.00, 3),
("general assistant", 13.00, 3),
("general janitor", 11.00, 3);

INSERT INTO employee (first_name, last_name, role_id)
VALUES
("John", "Jacob", 1),
("Naoko", "Akagi", 4),
("Jack", "Black", 7),
("Carol", "Ina", 2),
("Rei", "Ayanami", 5),
("Jeff", "Jefferson", 8),
("The", "Hulk", 3),
("Steve", "Jobs", 3),
("Salty", "Dog", 6),
("Corn", "Man", 6),
("Rodger", "Dingo", 9),
("Nigel", "Thornberry", 9);

SELECT department.dep_id, department.dep_name, roles.title, roles.salary
FROM department
INNER JOIN roles
ON department.dep_id = roles.department_id;

SELECT roles.title, employee.role_id, employee.first_name, employee.last_name
FROM roles
INNER JOIN employee
ON roles.rol_id = employee.role_id;

SELECT employee.first_name, employee.last_name, roles.title
FROM employee
LEFT JOIN roles
ON employee.emp_id = employee.managed_by_id;