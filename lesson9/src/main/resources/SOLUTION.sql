SELECT student.id, name, birthday, groupNumber FROM student JOIN mark m ON student.id = m.student_id GROUP BY student.id, name, birthday, groupNumber HAVING AVG(m.mark) > 8;

SELECT s.id, s.name FROM student s JOIN mark m ON s.id = m.student_id GROUP BY s.id, s.name HAVING MIN(m.mark) > 7;

SELECT s.id, s.name FROM student s JOIN payment p ON s.id = p.student_id WHERE payment_date BETWEEN '2019-01-01' AND '2019-12-31' GROUP BY s.id, s.name HAVING COUNT(p.id) > 2;



