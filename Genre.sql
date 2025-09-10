
drop table Genre

create table Genre
(
	genreId int not null identity(1, 1) primary key
	, name varchar(50)
)

select * from Genre


SELECT max(len([Poster_Link])) as posterLink
      ,max(len([Series_Title])) as title
      ,max([Released_Year]) as releasedYear
      ,max(len([Certificate])) as certificate
      ,max(len([Runtime])) as runtime
      ,max(len([Genre])) as genre
      ,max([IMDB_Rating]) as rating
      ,max(len([Overview])) as overview
      ,max([Meta_score]) as metaScore
      ,max(len([Director])) as director
      ,max(len([Star1])) as star1
      ,max(len([Star2])) as star2
      ,max(len([Star3])) as star3
      ,max(len([Star4])) as star4
      ,max([No_of_Votes]) as numberOfVotes
      ,max([Gross]) as Gross
FROM [IMDB_TOP_1000_DB].[dbo].[IMDB_Staging]

insert into Genre(name)
SELECT distinct trim(value)
FROM [IMDB_TOP_1000_DB].[dbo].[IMDB_Staging]
cross apply string_split(Genre, ',')
where trim(value) <> ''
and not exists (
    select 1 from [IMDB_TOP_1000_DB].[dbo].[IMDB_Staging] s where s.Genre = trim(value)
);


select * from Genre


