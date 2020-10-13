CREATE TABLE IF NOT EXISTS employee(
    Id      INT     NOT NULL,
    Salary  INT     NOT NULL
);

TRUNCATE TABLE employee;

INSERT INTO employee
    (Id, Salary)
VALUES
    ('1', '100'),
    ('2', '200'),
    ('3', '300');

SELECT MAX(Salary) AS "SecondHighestSalary"
    FROM employee
    WHERE Salary < (SELECT MAX(Salary) from employee);