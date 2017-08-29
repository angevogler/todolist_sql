-- Write the CREATE TABLE statement to make this table.
-- CREATE TABLE todos (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(255) NOT NULL,
--   details VARCHAR(1500) NULL,
--   priority INTEGER NOT NULL DEFAULT '1',
--   created_at TIMESTAMP NOT NULL DEFAULT NOW(),
--   completed_at TIMESTAMP NULL
--   );

-- Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times,
-- with not all having a completed time.
INSERT INTO todos (name, priority) VALUES ('finish laundry', '3');
INSERT INTO todos (name, priority) VALUES ('put away dishes', '4');
INSERT INTO todos (name, priority) VALUES ('clean bathroom', '4');
INSERT INTO todos (name, priority) VALUES ('wash sheets', '4');
INSERT INTO todos (name, details, priority) VALUES ('grocery shopping for the weekend', 'text Sarah and Gigi to find what they wants', '5');
INSERT INTO todos (name, priority) VALUES ('read chapter in graphic design book', '4');
INSERT INTO todos (name, priority) VALUES ('feed Tucker', '5');
INSERT INTO todos (name, priority) VALUES ('walk Tucker', '5');
INSERT INTO todos (name, priority) VALUES ('put away laundry', '5');
INSERT INTO todos (name, details, priority) VALUES ('clean floors', 'vacuum and mop', '5');
INSERT INTO todos (name, priority) VALUES ('clean kitchen counters', '5');
INSERT INTO todos (name, priority, completed_at) VALUES ('make lunch for tomorrow', '4', NOW());
INSERT INTO todos (name, priority) VALUES ('make dinner', '5');
INSERT INTO todos (name, priority) VALUES ('send birthday card', '3');
INSERT INTO todos (name, details, priority) VALUES ('pay rent', 'transfer money from savings', '5');
INSERT INTO todos (name, priority) VALUES ('finish lighthouses', '5');
INSERT INTO todos (name, priority) VALUES ('design final blog layout', '5');
INSERT INTO todos (name, priority) VALUES ('finalize blog color scheme', '4');
INSERT INTO todos (name, priority) VALUES ('finalize TIY Portfolio color scheme', '3');
INSERT INTO todos (name, details, priority) VALUES ('update portfolio', 'figure out which projects to include screenshots/descriptions of', '4');

-- Write a SELECT statement to find all incomplete todos with priority 3.
SELECT * FROM todos WHERE completed_at IS NULL AND priority = 3;

-- Write a SELECT statement to find the number of incomplete todos by priority.
SELECT COUNT(id), priority FROM todos WHERE completed_at IS NULL GROUP BY priority;

-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT COUNT(id), priority FROM todos WHERE created_at > '2017-07-29 14:00:09.29731' GROUP BY priority;

-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT * FROM todos ORDER BY priority desc, created_at asc LIMIT 1;
