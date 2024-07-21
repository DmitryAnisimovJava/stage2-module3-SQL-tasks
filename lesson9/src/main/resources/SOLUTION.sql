SELECT student.id, name, birthday, groupnumber
FROM student
         JOIN public.mark m ON student.id = m.student_id
GROUP BY student.id
HAVING AVG(m.mark) > 8;

SELECT s.id, s.name
FROM student s
         JOIN public.mark m ON s.id = m.student_id
GROUP BY s.id
HAVING MIN(m.mark) > 7;

SELECT s.id, s.name
FROM student s
         JOIN public.payment p ON s.id = p.student_id
WHERE payment_date BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY s.id
HAVING COUNT(s.id) > 2;



