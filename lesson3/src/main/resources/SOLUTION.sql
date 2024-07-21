ALTER TABLE student ALTER COLUMN birthday SET NOT NULL;

ALTER TABLE mark ADD CONSTRAINT mark_constraint CHECK (mark >= 1 AND mark <= 10);

ALTER TABLE mark ALTER COLUMN student_id SET NOT NULL;

ALTER TABLE mark ALTER COLUMN subject_id SET NOT NULL;

ALTER TABLE subject ADD CONSTRAINT grade_range_constraint CHECK (grade >= 1 AND grade <= 5);

ALTER TABLE paymenttype ADD CONSTRAINT Unique_name UNIQUE (name);

ALTER TABLE payment ALTER COLUMN type_id SET NOT NULL;

ALTER TABLE payment ALTER COLUMN amount SET NOT NULL;

ALTER TABLE payment ALTER COLUMN payment_date SET NOT NULL;