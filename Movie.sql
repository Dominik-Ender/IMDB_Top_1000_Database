
drop table Movie

create table Movie
(
	movieId int not null identity(1, 1) primary key
	, title varchar(100)
	, year smallint
	, certificate varchar(20)
	, runtime varchar(10)
	, overview varchar(400)
	, posterLink varchar(200)
)

select * from Movie


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

insert into Movie(title, year, certificate, runtime, overview, posterLink)
SELECT [Series_Title]
      ,[Released_Year]
      ,[Certificate]
      ,[Runtime]
      ,[Overview]
      ,[Poster_Link]
FROM [IMDB_TOP_1000_DB].[dbo].[IMDB_Staging]



select * from Movie


