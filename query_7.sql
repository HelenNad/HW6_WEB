SELECT gr.name, s.fullname, g.grade, d.name
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN [groups] gr ON gr.id = s.group_id
WHERE gr.id = 3 AND d.id = 3;