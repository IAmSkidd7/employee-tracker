DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE `department` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
);

CREATE TABLE `role` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(25) NOT NULL,
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id),
    REFERENCES `department`(id),
    ON DELETE SET NULL
);

CREATE TABLE `employee` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    role_id INT,
    manager_id INT NOT NULL,
    FOREIGN KEY (role_id)
    REFERENCES `role`(id)
    ON DELETE SET NULL
);
