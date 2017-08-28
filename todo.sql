CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  details VARCHAR(1500) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  completed_at TIMESTAMP NULL
  );

INSERT INTO todos (name, priority) VALUES ('finish weekly project', '5');
