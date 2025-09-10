
drop table MovieDirectors

create table MovieDirectors
(
	movieId int references Movie(movieId)
	, personId int references Person(personId)
	primary key (movieId, personId)
)

insert into MovieDirectors(movieId, personId)
select m.movieId, p.personId
from Staging as s
join Movie as m on m.title = s.Series_Title and m.posterLink = s.Poster_Link
join Person as p on p.name = s.Director


