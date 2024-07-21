SELECT DISTINCT id, name, description, grade
FROM subject,
     (SELECT subject_id, AVG(mark.mark) OVER (PARTITION BY subject_id) AS average
      FROM mark) AS groupAvg,
     (SELECT AVG(mark.mark) AS average FROM mark) AS allAvg
WHERE id = groupAvg.subject_id
  AND groupAvg.average > allAvg.average;

SELECT id, name, birthday, groupnumber
FROM student,
     (SELECT student_id, AVG(amount) OVER (PARTITION BY payment.student_id) AS average FROM payment) AS groupAvg,
     (SELECT AVG(amount) AS average FROM payment) AS allAvg
WHERE id = groupAvg.student_id
  AND groupAvg.average < allAvg.average;


