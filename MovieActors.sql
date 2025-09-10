
drop table MovieActors

create table MovieActors
(
	movieId int references Movie(movieId)
	, personId int references Person(personId)
	, roleOrder int
	, primary key (movieId, personId)
);