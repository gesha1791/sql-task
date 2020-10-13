CREATE TABLE IF NOT EXISTS Customers(
    Id          INT,
    Name        VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Orders(
    Id          INT,
    CustomerId  INT
);

TRUNCATE TABLE Customers;

INSERT INTO Customers
    (id, name)
VALUES
    (1, 'Joe'),
    (2, 'Henry'),
    (3, 'Sam'),
    (4, 'Max');

TRUNCATE TABLE Orders;

INSERT INTO Orders
    (id, CustomerId)
VALUES
    (1, 3),
    (2, 1);

SELECT Name AS 'Customers'
    FROM Customers a
    LEFT JOIN Orders b ON a.Id = b.CustomerId
    WHERE b.CustomerId IS NULL


