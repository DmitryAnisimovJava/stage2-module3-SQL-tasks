SELECT id, type_id, amount, student_id, payment_date FROM payment WHERE type_id IN (SELECT id FROM paymentType WHERE name LIKE 'MONTHLY');

SELECT mark.id, mark.student_id, mark.subject_id, mark.mark FROM mark WHERE mark.subject_id = (SELECT id FROM subject WHERE name = 'Art');

SELECT student.id, name, birthday, groupNumber FROM student INNER JOIN payment p ON student.id = p.student_id WHERE p.type_id IN (SELECT id FROM paymentType WHERE name LIKE 'WEEKLY');

SELECT student.id, name, birthday, groupNumber FROM student INNER JOIN mark m ON student.id = m.student_id WHERE m.subject_id IN (SELECT id FROM subject WHERE name = 'Math');
