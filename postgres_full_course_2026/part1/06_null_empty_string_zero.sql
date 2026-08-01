-- null - unknown/missing value
-- empty string - known string val but it contains no characters
-- zero - actual numeric value of 0

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,

    nickname TEXT,

    bio TEXT,

    score INTEGER
);

INSERT INTO basics.value_examples (nickname, bio, score)
VALUES
    --nikname is null
    (null, 'learning postgreSQL', 10),
    ('', 'empty nick name', 20),
    ('huzaifa', '', 0),
    ('john', null, null);

-- SELECT * FROM basics.value_examples;

SELECT * FROM basics.value_examples WHERE nickname IS NULL;

-- write one query to find where nickname is empty string

SELECT * FROM basics.value_examples WHERE nickname = '';

SELECT * FROM basics.value_examples WHERE score = 0;

SELECT * FROM basics.value_examples WHERE nickname IS NOT NULL;
