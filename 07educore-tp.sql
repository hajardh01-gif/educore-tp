
SELECT id, nom, email
FROM users
WHERE email = 'test@mail.com';

EXPLAIN
SELECT id, user_id, amount, paid_at
FROM payments
WHERE paid_at >= '2025-01-01';

EXPLAIN
SELECT user_id, progress
FROM enrollments
WHERE course_id = 1;

CREATE INDEX idx_users_email ON users(email);

CREATE INDEX idx_payments_paid_at ON payments(paid_at);

CREATE INDEX idx_enrollments_course_user
ON enrollments(course_id, user_id);

EXPLAIN
SELECT id, nom, email
FROM users
WHERE email = 'test@mail.com';

EXPLAIN
SELECT id, user_id, amount, paid_at
FROM payments
WHERE paid_at >= '2025-01-01';

EXPLAIN
SELECT user_id, progress
FROM enrollments
WHERE course_id = 1;
