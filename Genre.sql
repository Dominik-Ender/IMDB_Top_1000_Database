
drop table Genre

create table Genre
(
	genreId int not null identity(1, 1) primary key
	, name varchar(50)
)

select * from Genre

insert into Genre(name)
SELECT distinct trim(value)
FROM Staging
cross apply string_split(Genre, ',')
where trim(value) <> ''
and not exists (
    select 1 from Staging s where s.Genre = trim(value)
);


select * from Genre


