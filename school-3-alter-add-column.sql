-- Add a phone number column - better approach than dropping a table and redoing the whole thing with the variables we want
ALTER TABLE students ADD COLUMN phone_number TEXT;
