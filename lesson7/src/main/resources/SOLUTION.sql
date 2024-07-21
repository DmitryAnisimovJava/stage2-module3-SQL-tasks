SELECT mark FROM mark WHERE mark > 6 ORDER BY mark DESC;

SELECT * FROM payment WHERE amount < 300 ORDER BY amount ASC;

SELECT * FROM paymentType ORDER BY name ASC;

SELECT * FROM student ORDER BY name DESC;

SELECT student.id, name, birthday, groupNumber FROM student INNER JOIN payment p ON student.id = p.student_id WHERE p.amount > 1000 ORDER BY birthday ASC;