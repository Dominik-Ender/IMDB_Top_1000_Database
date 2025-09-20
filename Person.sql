
drop table Person

create table Person
(
	personId int not null identity(1,1) primary key
	, name varchar(50) not null
)

insert into Person(name)
select distinct s.Director
from Staging s 
where not exists (select 1 from Person p where p.name = s.Director)

insert into Person(name)
select distinct s.Star1
from Staging s
where not exists (select 1 from Person p where p.name = s.Star1)

insert into Person(name)
select distinct s.Star2
from Staging s
where not exists (select 1 from Person p where p.name = s.Star2)

insert into Person(name)
select distinct s.Star3
from Staging s
where not exists (select 1 from Person p where p.name = s.Star3)

select * from Person

select name, count(*) 
from Person
group by name
having count(*) > 1
