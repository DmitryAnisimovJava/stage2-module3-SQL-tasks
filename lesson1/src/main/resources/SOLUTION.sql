CREATE TABLE student
(
    id       BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name     VARCHAR(45),
    birthday DATE NOT NULL,
    "group"  INT  NOT NULL
);

CREATE TABLE subject
(
    id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name        VARCHAR(250) NOT NULL,
    description VARCHAR(250),
    grade       INT     NOT NULL
);

CREATE TABLE mark
(
    id         BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_id BIGINT REFERENCES Student (id),
    subject_id BIGINT REFERENCES Subject (id),
    mark       INT NOT NULL
);

CREATE TABLE paymentType
(
    id   BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(45)
);

CREATE TABLE payment
(
    id           BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type_id      BIGINT NOT NULL REFERENCES paymentType(id),
    amount       DECIMAL NOT NULL,
    student_id   BIGINT NOT NULL REFERENCES student(id),
    payment_date TIMESTAMP NOT NULL
);





