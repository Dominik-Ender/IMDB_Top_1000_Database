
drop table Staging

SELECT TOP (1000) [Poster_Link]
      ,[Series_Title]
      ,[Released_Year]
      ,[Certificate]
      ,[Runtime]
      ,[Genre]
      ,[IMDB_Rating]
      ,[Overview]
      ,[Meta_score]
      ,[Director]
      ,[Star1]
      ,[Star2]
      ,[Star3]
      ,[Star4]
      ,[No_of_Votes]
      ,[Gross]
  FROM Staging

  select * from Staging

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
 FROM Staging
