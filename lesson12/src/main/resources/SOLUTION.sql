DELETE
FROM student
    USING mark
        JOIN public.subject s ON mark.subject_id = s.id
WHERE s.grade >= 4
  AND mark.student_id = student.id;


DELETE
FROM student
    USING mark
WHERE mark.mark < 4
  AND student_id = student.id;

DELETE
FROM paymenttype
WHERE name LIKE 'DAILY';

DELETE
FROM mark
WHERE mark < 7;
