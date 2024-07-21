CREATE TABLE student
(
    id          BIGINT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(45),
    birthday    DATE NOT NULL,
    groupNumber INT  NOT NULL
);

CREATE TABLE subject
(
    id          BIGINT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(250) NOT NULL,
    description VARCHAR(250),
    grade       INT          NOT NULL
);

CREATE TABLE mark
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT,
    subject_id BIGINT,
    mark       INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subject(id) ON DELETE CASCADE
);

CREATE TABLE paymentType
(
    id   BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45)
);

CREATE TABLE payment
(
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    type_id      BIGINT    NOT NULL,
    amount       DECIMAL   NOT NULL,
    student_id   BIGINT    NOT NULL,
    payment_date TIMESTAMP NOT NULL,
    FOREIGN KEY (type_id) REFERENCES paymentType(id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CAS
