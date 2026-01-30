DROP VIEW v_active_users;

CREATE VIEW v_active_users AS
SELECT DISTINCT u.*
FROM users u
JOIN enrollments e ON e.user_id = u.id;

DROP VIEW v_monthly_revenue;
CREATE VIEW v_monthly_revenue AS
SELECT DATE_FORMAT(paid_at, '%Y-%m') AS month, SUM(amount) AS revenue
FROM payments
GROUP BY DATE_FORMAT(paid_at, '%Y-%m');

DROP VIEW IF EXISTS v_popular_courses;

CREATE VIEW v_popular_courses AS
SELECT c.id, c.titre, COUNT(e.user_id) AS total_enrollments
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
GROUP BY c.id, c.titre;

