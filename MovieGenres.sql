
drop table MovieGenres

create table MovieGenres
(
	movieId int references Movie(movieId),
	genreId int references Genre(genreId),
	primary key (movieId, genreId)
);


