-- Concept: SWAP the ids of consecutive two students 
-- Used the idea of checking if teh number is even or odd.


SELECT s1.id as id, coalesce(s2.student, s1.student) as student
FROM Seat as s1
LEFT join Seat as s2
ON (s1.id%2=0 AND s1.id = s2.id+1) OR (s1.id%2=1 AND s1.id=s2.id-1);
