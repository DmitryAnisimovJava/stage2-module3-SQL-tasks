DELETE FROM student WHERE id IN (SELECT DISTINCT mark.student_id FROM mark JOIN subject s ON mark.subject_id = s.id WHERE s.grade >= 4);

DELETE FROM student WHERE id IN (SELECT DISTINCT student_id FROM mark WHERE mark < 4);

DELETE FROM paymentType WHERE name LIKE 'DAILY';

DELETE FROM mark WHERE mark < 7;

