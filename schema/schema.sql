CREATE TABLE users(

user_id SERIAL PRIMARY KEY,

name VARCHAR(100) NOT NULL,

email VARCHAR(100) UNIQUE NOT NULL,

country VARCHAR(50),

created_at DATE

);

CREATE TABLE movies(

movie_id SERIAL PRIMARY KEY,

title VARCHAR(150) NOT NULL,

rating DECIMAL(2,1),

release_year INT,

duration INT

);

CREATE TABLE subscription(

sub_id SERIAL PRIMARY KEY,

user_id INT,

plan VARCHAR(50),

price DECIMAL(10,2),

start_date DATE,

FOREIGN KEY(user_id)
REFERENCES users(user_id)

);

CREATE TABLE watch_history(

watch_id SERIAL PRIMARY KEY,

user_id INT,

movie_id INT,

watch_date DATE,

watch_time INT,

FOREIGN KEY(user_id)
REFERENCES users(user_id),

FOREIGN KEY(movie_id)
REFERENCES movies(movie_id)

);

CREATE TABLE movie_genres(

genre_id SERIAL PRIMARY KEY,

movie_id INT,

genre VARCHAR(50),

FOREIGN KEY(movie_id)
REFERENCES movies(movie_id)

);
