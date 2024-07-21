INSERT INTO student(name, birthday, groupnumber)
VALUES ('John', '1997-07-01', 1),
       ('Chris', '1999-07-01', 1),
       ('Carl', '2000-07-01', 1),
       ('Oliver', '2001-06-01', 2),
       ('James', '2001-06-01', 2),
       ('Lucas', '2001-06-01', 2),
       ('Henry', '2001-06-01', 2),
       ('Jacob', '2001-06-01', 3),
       ('Logan', '2001-06-01', 3),
       ('Lens', '2001-06-01', 4),
       ('Marta', '2001-06-01', 4),
       ('Martin', '2001-06-01', 5),
       ('Ross', '2001-06-01', 5),
       ('Alexander', '2001-06-01', 5);

INSERT INTO subject(name, description, grade)
VALUES ('Art', 'desc1', 1),
       ('Music', 'desc1', 1),
       ('Geography', 'desc2', 2),
       ('History', 'desc2', 2),
       ('PE', 'desc3', 3),
       ('Math', 'desc3', 3),
       ('Science', 'desc4', 4),
       ('IT', 'desc4', 4),
       ('Subject1', 'desc5', 5),
       ('Subject2', 'desc6', 5);

INSERT INTO paymenttype(name)
VALUES ('DAILY'),
       ('WEEKLY'),
       ('MONTHLY');

INSERT INTO payment(type_id, amount, student_id, payment_date)
VALUES (2, 1000, 1, NOW()),
       (3, 1000, 4, NOW()),
       (2, 1000, 7, NOW()),
       (1, 1000, 5, NOW()),
       (3, 10000, 2, NOW()),
       (2, 1000, 10, NOW());


INSERT INTO mark(student_id, subject_id, mark)
VALUES (2, 1, 8),
       (4, 4, 5),
       (5, 3, 9),
       (8, 6, 4),
       (9, 5, 9),
       (10, 7, 6),
       (11, 3, 3),
       (13, 7, 3);

