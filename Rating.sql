
drop table Rating

create table Rating
( 
	movieId int not null identity(1,1) primary key
	, rating smallint
	, metaScore int
	, numberOfVotes bigint
	, gross bigint
)

insert into Rating
(
	rating
	, metaScore
	, numberOfVotes
	, gross
)
select 
	s.IMDB_Rating
	, s.Meta_Score
	, s.No_of_Votes
	, s.Gross
from Staging as s
join Movie as m on m.title = s.Series_Title and m.posterLink = s.Poster_Link

update Rating
set rating = 80
where rating = 8

update Rating
set rating = 90
where rating = 9


select * from Rating




