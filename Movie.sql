
drop table Movie

create table Movie
(
	movieId int not null identity(1,1) primary key
	, title varchar(100)
	, year smallint
	, certificate varchar(20)
	, runtime smallint
	, overview varchar(400)
	, posterLink varchar(200)
)

select * from Movie

insert into Movie(title, year, certificate, runtime, overview, posterLink)
SELECT [Series_Title]
      ,[Released_Year]
      ,[Certificate]
      ,try_cast(replace([Runtime], ' min', '') as int)
      ,[Overview]
      ,[Poster_Link]
FROM [IMDB_TOP_1000_DB].[dbo].[IMDB_Staging]



select * from Movie


