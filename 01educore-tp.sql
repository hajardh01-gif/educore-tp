CREATE DATABASE educore;
USE educore;
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(200) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
DESCRIBE users;
CREATE TABLE courses (
  id INT PRIMARY KEY AUTO_INCREMENT,
  titre VARCHAR(200),
  prix DECIMAL(10,2),
  CHECK (prix > 0)
);
CREATE TABLE enrollments (
  user_id INT,
  course_id INT,
  progress INT DEFAULT 0,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (course_id) REFERENCES courses(id),
  CHECK (progress BETWEEN 0 AND 100)
);
CREATE TABLE payments (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  amount DECIMAL(10,2),
  paid_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
INSERT INTO users (nom, email)
VALUES ('Test User', 'test@mail.com');
 




