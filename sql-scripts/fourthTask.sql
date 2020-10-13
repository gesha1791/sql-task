CREATE TABLE IF NOT EXISTS Person(
    Id      INT             NOT NULL,
    Email   VARCHAR(255)    NOT NULL
);

TRUNCATE TABLE Person;

INSERT INTO Person
    (id, email)
VALUES
    ('1', 'a@b.com'),
    ('2', 'c@d.com'),
    ('3', 'a@b.com');

SELECT Email
    FROM Person
    GROUP BY Email
    HAVING COUNT(Email) >=2;
