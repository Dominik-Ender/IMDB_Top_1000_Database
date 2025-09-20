
drop table MovieGenres

create table MovieGenres
(
	movieId int references Movie(movieId),
	genreId int references Genre(genreId),
	primary key (movieId, genreId)
);

insert into MovieGenres(movieId, genreId)
select m.movieId, g.genreId
from Staging as s
join Movie as m on m.title = s.Series_Title
	and m.posterLink = s.Poster_Link
cross apply string_split(s.Genre, ',') sp
join Genre g on g.name = trim(sp.value)


select * from MovieGenres

