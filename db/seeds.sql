USE team_db;

INSERT INTO department (name)
VALUES ('Business'),
       ('Services'),
       ('Government'),
       ('Other');

INSERT INTO role (title, salary, department_id)
VALUES ('Marketing Lead', 100000, 1),
       ('Teacher', 48000, 3),
       ('Police Officer', 60000, 3),
       ('Bartender', 51000, 2),
       ('Model', 62000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Winston', 'Schmidt', 1, NULL),
       ('Jessica', 'Day', 3, NULL),
       ('Winston', 'Bishop', 4, NULL),
       ('Nick', 'Miller', 2, NULL),
       ('Cece', 'Parekh', 5, NULL);