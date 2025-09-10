
drop table [IMDB_TOP_1000_DB].[dbo].[IMDB_Staging]

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
  FROM [IMDB_TOP_1000_DB].[dbo].[IMDB_Staging]

  select * from [IMDB_TOP_1000_DB].[dbo].[IMDB_Staging]

  