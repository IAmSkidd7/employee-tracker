USE employee_db;

INSERT INTO department (id, dept_name) 
VALUES 
(1, 'Sales'),
(2, 'Engineering'),
(3, 'History'),
(4, 'Human Resources');

INSERT INTO `role` (department_id, title, salary) 
VALUES 
(1, 'Sales Manager', 75000),
(1, 'Sales Consultant', 50000),
(2, 'Software Engineer', 180000),
(2, 'Mechanical Engineer', 140000),
(3, 'Teacher', 65000),
(3, 'Assistant Teacher', 45000),
(4, 'HR Manager', 115000),
(4, 'Social Media Manager', 30000);

INSERT INTO employee (manager_id, first_name, last_name, role_id) 
VALUES 
(NULL, 'Baron', 'Skidmore', 1),
(NULL, 'Barry', 'Skidmore', 2),
(NULL, 'Mandy', 'Vernon', 3),
(NULL, 'Angelia', 'Skidmore', 4);