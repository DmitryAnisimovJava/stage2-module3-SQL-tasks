SELECT id, type_id, amount, student_id, payment_date
FROM payment
WHERE amount >= 500;

SELECT id, name, birthday, groupnumber
FROM student
WHERE DATE_PART('year', age('2000-10-10', birthday)) > 20;

SELECT id, name, birthday, groupnumber
FROM student
WHERE groupnumber = 10
  AND DATE_PART('year', age('2000-10-10', birthday)) < 20;

SELECT id, name, birthday, groupnumber
FROM student
WHERE name LIKE 'Mike'
   OR groupnumber IN (4, 5, 6);

SELECT id, type_id, amount, student_id, payment_date
FROM payment
WHERE (EXTRACT(YEAR FROM AGE('2000-10-10', payment_date)) * 12 + EXTRACT(MONTH FROM AGE('2000-10-10', payment_date))) <= 8;

SELECT id, name, birthday, groupnumber
FROM student
WHERE name LIKE 'A%';

SELECT id, name, birthday, groupnumber
FROM student
WHERE (name = 'Roxi' AND groupnumber = 4)
   OR (name = 'Tallie' AND groupnumber = 9);

