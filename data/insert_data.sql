INSERT INTO users(name,email,country,created_at)
VALUES (
'sanjana',
'[sanjana@gmail.com](mailto:sanjana@gmail.com)',
'india',
'2026-06-10'
),

(
'rahul',
'[rahul@gmail.com](mailto:rahul@gmail.com)',
'india',
'2026-06-10'
);

INSERT INTO movies(title,rating,release_year,duration)
VALUES(
'interstellar',
9.0,
2014,
169
),

(
'money heist',
8.5,
2020,
60
);

INSERT INTO subscription(user_id,plan,price,start_date)
VALUES(
1,
'premium',
699,
'2026-06-10'
),

(
2,
'basic',
299,
'2026-06-10'
);

INSERT INTO watch_history(user_id,movie_id,watch_date,watch_time)
VALUES(
1,
1,
'2026-06-10',
169
),

(
2,
2,
'2026-06-10',
60
);

INSERT INTO movie_genres(movie_id,genre)
VALUES(
1,
'sci-fi'
),

(
2,
'drama'
);
