CREATE TABLE person(
    PersonId    INT             NOT NULL,
    FirstName   VARCHAR(255)    NOT NULL,
    LastName    VARCHAR(255)    NOT NULL
);

CREATE TABLE address (
    AddressId   INT             NOT NULL,
    PersonId    INT             NOT NULL,
    City        VARCHAR(255)    NOT NULL,
    State       VARCHAR(255)    NOT NULL
);

TRUNCATE TABLE person;

INSERT INTO person
        (PersonId, FirstName, LastName)
VALUES
        ('1', 'Wang', 'ALLEN');

TRUNCATE TABLE address;

INSERT INTO address
        (AddressId, PersonId, City, State)
VALUES
       ('1', '2', 'New York City', 'New York');

SELECT FirstName, LastName, City, State
    FROM person
    LEFT JOIN address
    ON person.PersonId = address.PersonId;
