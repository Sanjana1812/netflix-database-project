SELECT
u.name,
s.plan,
s.price

FROM users u

JOIN subscription s

ON u.user_id=s.user_id;

SELECT

u.name,
m.title

FROM users u

JOIN watch_history w

ON u.user_id=w.user_id

JOIN movies m

ON w.movie_id=m.movie_id;

SELECT

AVG(rating)

AS average_rating

FROM movies;

SELECT

title,
rating

FROM movies

ORDER BY rating DESC

LIMIT 1;

SELECT

name

FROM users

WHERE user_id IN(

SELECT user_id

FROM subscription

WHERE plan='premium'

);

SELECT

u.name,

COUNT(*)

AS total_movies

FROM users u

JOIN watch_history w

ON u.user_id=w.user_id

GROUP BY u.name;
