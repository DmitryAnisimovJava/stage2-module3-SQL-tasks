SELECT id, type_id, amount, student_id, payment_date
FROM payment
WHERE type_id IN (SELECT id FROM paymenttype WHERE paymenttype.name LIKE 'MONTHLY');

SELECT mark.id, mark.student_id, mark.subject_id, mark.mark
FROM mark
WHERE mark.subject_id = (SELECT id FROM subject WHERE name = 'Art');

SELECT student.id, name, birthday, "group"
FROM student
         LEFT JOIN public.payment p ON student.id = p.student_id
WHERE p.type_id IN (SELECT id FROM paymenttype WHERE paymenttype.name LIKE 'WEEKLY');

SELECT student.id, name, birthday, "group"
FROM student
         LEFT JOIN public.mark m ON student.id = m.student_id
WHERE m.subject_id IN (SELECT id FROM subject WHERE subject.name = 'Math');