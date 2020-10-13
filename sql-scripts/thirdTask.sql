CREATE TABLE IF NOT EXISTS employee_upd(
    Id          INT ,
    Name        VARCHAR(255),
    Salary      INT,
    Managed     INT
);

TRUNCATE TABLE employee_upd;

INSERT INTO employee_upd
    (id, name, salary, managed)
VALUES
    ('1', 'Joe', '70000', '3'),
    ('2', 'Henry', '80000', '4'),
    ('3', 'Sam', '60000', null),
    ('4', 'Max', '90000', null);


SELECT a.Name AS Employee
    FROM employee_upd AS a, employee_upd AS b
WHERE a.Managed = b.Id AND A.Salary > b.Salary;


