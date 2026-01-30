USE educore;
SELECT user_id, SUM(amount) AS total_spent
FROM payments
GROUP BY user_id;

SELECT user_id, SUM(amount) AS total_spent
FROM payments
GROUP BY user_id
HAVING SUM(amount) > (
    SELECT AVG(total_user_spent)
    FROM (
        SELECT SUM(amount) AS total_user_spent
        FROM payments
        GROUP BY user_id
    ) t
);

SELECT id, title, price
FROM courses
WHERE price > (SELECT AVG(price) FROM courses);

SELECT user_id
FROM enrollments
GROUP BY user_id
HAVING COUNT(course_id) >= 2;

SELECT DISTINCT c.id, c.title
FROM courses cs
JOIN enrollments e ON e.course_id = c.id
LEFT JOIN payments p ON p.user_id = e.user_id AND p.course_id = c.id
WHERE p.id IS NULL;
