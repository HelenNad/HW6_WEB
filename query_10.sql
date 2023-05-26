SELECT s.fullname, d.name, t.fullname 
FROM grades g  
JOIN disciplines d ON d.id = g.discipline_id 
JOIN students s ON s.id = g.student_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 6 AND t.id = 4
GROUP BY d.name;