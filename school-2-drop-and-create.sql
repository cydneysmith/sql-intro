-- Drop the students table - not necessarily the best thing to do because we're essentially dropping a bomb on the student table. very risky
DROP TABLE students;

-- Recreate it
CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);