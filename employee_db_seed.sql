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

