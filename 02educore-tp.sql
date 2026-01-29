INSERT INTO users (nom, email) VALUES
('Ali', 'ali@mail.com'),
('Sara', 'sara@mail.com'),
('Yassine', 'yassine@mail.com'),
('Nina', 'nina@mail.com'),
('Omar', 'omar@mail.com'),
('Lina', 'lina@mail.com'),
('Karim', 'karim@mail.com'),
('Sofia', 'sofia@mail.com'),
('Adam', 'adam@mail.com'),
('Ines', 'ines@mail.com');

INSERT INTO courses (titre, prix) VALUES
('Développement Web', 89),
('Python pour débutants', 69),
('Data Analysis', 120),
('Cyber Sécurité', 130),
('Intelligence Artificielle', 199),
('SQL Avancé', 90);

INSERT INTO enrollments (user_id, course_id, progress) VALUES
(1, 1, 80),
(1, 2, 40),
(2, 1, 20),
(2, 3, 60),
(3, 2, 90),
(3, 4, 10),
(4, 3, 50),
(4, 5, 30),
(5, 1, 100),
(5, 6, 70),
(6, 4, 15),
(7, 5, 85),
(8, 6, 55),
(9, 2, 25),
(10, 3, 45);

INSERT INTO payments (user_id, amount) VALUES
(1, 89),
(2, 120),
(3, 69),
(4, 130),
(5, 90),
(6, 130),
(7, 199),
(8, 90),
(9, 69),
(10, 120);

SELECT 'users' AS table_name, COUNT(*) AS total FROM users
UNION ALL
SELECT 'courses', COUNT(*) FROM courses
UNION ALL
SELECT 'enrollments', COUNT(*) FROM enrollments
UNION ALL
SELECT 'payments', COUNT(*) FROM payments;

SELECT *
FROM enrollments
WHERE progress < 0 OR progress > 100;

SELECT e.*
FROM enrollments e
LEFT JOIN users u ON e.user_id = u.id
LEFT JOIN courses c ON e.course_id = c.id
WHERE u.id IS NULL OR c.id IS NULL;

SELECT *
FROM payments
WHERE amount <= 0;
