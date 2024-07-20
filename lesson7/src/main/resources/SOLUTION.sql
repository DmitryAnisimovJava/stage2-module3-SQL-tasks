SELECT mark.mark
FROM mark
WHERE mark.mark > 6
ORDER BY mark DESC;

SELECT *
FROM payment
WHERE amount < 300
ORDER BY amount ASC;

SELECT *
FROM paymenttype
ORDER BY name ASC;

SELECT *
FROM student
ORDER BY name DESC;

SELECT student.id, name, birthday, "group"
FROM student
         LEFT JOIN public.payment p ON student.id = p.student_id
WHERE p.amount > 1000
ORDER BY birthday ASC;