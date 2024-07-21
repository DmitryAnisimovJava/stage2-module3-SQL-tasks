SELECT id, type_id, amount, student_id, payment_date FROM payment WHERE amount >= 500;

SELECT id, name, birthday, groupNumber FROM student WHERE DATEDIFF('YEAR', birthday, '2000-10-10') > 20;

SELECT id, name, birthday, groupNumber FROM student WHERE groupNumber = 10 AND DATEDIFF('YEAR', birthday, '2000-10-10') < 20;

SELECT id, name, birthday, groupNumber FROM student WHERE name LIKE 'Mike%' OR groupNumber IN (4, 5, 6);

SELECT id, type_id, amount, student_id, payment_date FROM payment WHERE DATEDIFF('MONTH', payment_date, '2000-10-10') <= 8;

SELECT id, name, birthday, groupnumber FROM student WHERE name LIKE 'A%';

SELECT id, name, birthday, groupNumber FROM student WHERE (name = 'Roxi' AND groupNumber = 4) OR (name = 'Tallie' AND groupNumber = 9);

