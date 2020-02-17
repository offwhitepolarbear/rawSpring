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
url VARCHAR(50) NOT NULL,
is_active CHAR(1) NOT NULL DEFAULT 'a'
);


CREATE TABLE
article(
id SERIAL PRIMARY KEY,
board_id INTEGER REFERENCES board(id) NOT NULL,
origin_article_id INTEGER NOT NULL,
direct_reference_article_id INTEGER NOT NULL,
depth INTEGER NOT NULL,
users_id INTEGER REFERENCES users(id) NOT NULL,
title VARCHAR(50) NOT NULL,
content VARCHAR,
is_active CHAR(1) NOT NULL DEFAULT 'a',
register_time TIMESTAMPTZ NOT NULL,
modify_time TIMESTAMPTZ
);

CREATE TABLE
reply(
id SERIAL PRIMARY KEY,
article_id INTEGER REFERENCES article(id) NOT NULL,
target_type INTEGER,
target_id INTEGER,
depth INTEGER,
users_id INTEGER REFERENCES users(id) NOT NULL,
content VARCHAR NOT NULL,
is_active CHAR(1) NOT NULL,
register_time TIMESTAMPTZ NOT NULL,
modify_time TIMESTAMPTZ
);

INSERT INTO
		board
		(id, index, name, description, url, is_active)
		VALUES
		(1, 1, '전체게시판', '전체게시판', 'all', 'A');
		
		