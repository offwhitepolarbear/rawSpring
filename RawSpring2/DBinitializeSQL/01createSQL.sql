
CREATE TABLE
users(
id SERIAL PRIMARY KEY,
email VARCHAR(50) UNIQUE,
password VARCHAR(20) NOT NULL,
name VARCHAR(20) NOT NULL,
nickname VARCHAR(20) NOT NULL,
phone_head NUMERIC(3) NOT NULL,
phone_body NUMERIC(4) NOT NULL,
phone_tail NUMERIC(4) NOT NULL,
register_time TIMESTAMPTZ NOT NULL,
profile_img VARCHAR(50),
user_role CHAR(1)  NOT NULL
);

CREATE TABLE
board(
id SERIAL PRIMARY KEY,
index NUMERIC(3) NOT NULL,
name VARCHAR(50) NOT NULL,
description VARCHAR(200),
is_active CHAR(1) NOT NULL DEFAULT 'a'
);

CREATE TABLE
article(
id SERIAL PRIMARY KEY,
board_id INTEGER REFERENCES board(id) NOT NULL,
users_id INTEGER REFERENCES users(id) NOT NULL,
title VARCHAR(50) NOT NULL,
content VARCHAR,
is_active CHAR(1) NOT NULL DEFAULT 'a',
register_time TIMESTAMPTZ NOT NULL,
modify_time TIMESTAMPTZ
);

ALTER TABLE article ADD COLUMN origin_article_id INTEGER REFERENCES article (id);
ALTER TABLE article ADD COLUMN direct_reference_article_id INTEGER REFERENCES article (id);
ALTER TABLE article ALTER COLUMN depth INTEGER CHECK (depth >-1, DEFAULT = 0);
ALTER TABLE article ALTER COLUMN depth SET DEFAULT 0;

CREATE TABLE
reply(
id SERIAL PRIMARY KEY,
article_id INTEGER REFERENCES article(id) NOT NULL,
users_id INTEGER REFERENCES users(id) NOT NULL,
content VARCHAR NOT NULL,
is_active CHAR(1) NOT NULL,
register_time TIMESTAMPTZ NOT NULL,
modify_time TIMESTAMPTZ
);

CREATE TABLE
recommendation
(id SERIAL PRIMARY KEY,
target_type CHAR(1) NOT NULL,
target_id INTEGER NOT NULL,
user_id INTEGER REFERENCES users(id) NOT NULL,
is_positive CHAR(1) NOT NULL);