CREATE TABLE IF NOT EXISTS courses
(
    Student varchar(255),
    Class   varchar(255)
);

TRUNCATE TABLE courses;

INSERT INTO courses
    (student, class)
VALUES
    ('A', 'Math'),
    ('B', 'English'),
    ('C', 'Math'),
    ('D', 'Biology'),
    ('E', 'Math'),
    ('F', 'Computer'),
    ('G', 'Math'),
    ('H', 'Math'),
    ('I', 'Math');

SELECT Class
    FROM courses
    GROUP BY Class
HAVING COUNT(Class) >=5;
