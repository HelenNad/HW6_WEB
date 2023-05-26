--1)
SELECT s.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id 
GROUP BY s.fullname 
ORDER BY average_grade DESC
LIMIT 5;

--2)
SELECT d.name, s.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 1
GROUP BY s.fullname
ORDER BY average_grade DESC
LIMIT 1;

--3)
SELECT d.name, gr.name, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN [groups] gr ON gr.id = s.group_id
WHERE d.id = 3
GROUP BY gr.name
ORDER BY average_grade DESC;

--4)
SELECT ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g;

--5)
SELECT d.name, t.fullname
FROM disciplines d
JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 5;

--6)
SELECT gr.name, s.fullname
FROM students s 
JOIN [groups] gr ON gr.id = s.group_id
WHERE gr.id = 3;

--7)
SELECT gr.name, s.fullname, g.grade, d.name
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN [groups] gr ON gr.id = s.group_id
WHERE gr.id = 3 AND d.id = 3;

--8)
SELECT d.name, t.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM disciplines d
JOIN teachers t ON t.id = d.teacher_id 
JOIN grades g ON g.discipline_id = d.id
WHERE t.id = 5
GROUP BY d.name;

--9)
SELECT s.fullname, d.name
FROM grades g  
JOIN disciplines d ON d.id = g.discipline_id 
JOIN students s ON s.id = g.student_id 
WHERE s.id = 6
GROUP BY d.name;

--10)
SELECT s.fullname, d.name, t.fullname 
FROM grades g  
JOIN disciplines d ON d.id = g.discipline_id 
JOIN students s ON s.id = g.student_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 6 AND t.id = 4
GROUP BY d.name;