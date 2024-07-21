SELECT DISTINCT s.id, s.name, s.description, s.grade FROM subject s JOIN (SELECT subject_id, AVG(mark) AS average FROM mark GROUP BY subject_id) AS groupAvg ON s.id = groupAvg.subject_id JOIN (SELECT AVG(mark) AS average FROM mark) AS allAvg WHERE groupAvg.average > allAvg.average;

SELECT DISTINCT s.id, s.name, s.birthday, s.groupNumber
FROM student s
         JOIN (
    SELECT student_id, AVG(amount) AS average
    FROM payment
    GROUP BY student_id
) AS groupAvg ON s.id = groupAvg.student_id
         JOIN (
    SELECT AVG(amount) AS average
    FROM payment
) AS allAvg WHERE groupAvg.average < allAvg.average;


