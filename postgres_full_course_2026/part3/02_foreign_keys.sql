-- Foreign key is a column that points to the primary key of another table.

-- users.id - parent key
-- posts.user_id - foreign key
-- every post you will create that must belong to an existing user

SELECT id, name
FROM users;

SELECT id, user_id, title
FROM posts;