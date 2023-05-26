SELECT d.name, t.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM disciplines d
JOIN teachers t ON t.id = d.teacher_id 
JOIN grades g ON g.discipline_id = d.id
WHERE t.id = 5
GROUP BY d.name;