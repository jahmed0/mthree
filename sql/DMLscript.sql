USE MovieCatalogue;

insert into Actor (FirstName, LastName, BirthDate) values
	('Bill', 'Murray', '1950-09-21'),
    ('Dan','Aykroyd', '1952-07-01'),
    ('John','Candy','1950-10-31'),
    ('Steve','Martin',null),
    ('Sylvester','Stallone',null);

insert into Director (FirstName, LastName, BirthDate) values
	('Ivan','Reitman', '1946-10-27'),
    ('Ted', 'Kotcheff', null);

insert into Rating (RatingName) values
	('G'),
    ('PG'),
    ('PG-13'),
    ('R');

insert into Genre (GenreName) values
	('Action'),
    ('Comedy'),
    ('Drama'),
    ('Horror');

insert into Movie (GenreID, DirectorID, RatingID, Title, ReleaseDate) values
	(1,2,4,'Rambo: First Blood', '1982-10-22'),
    (2,null,4,'Planes, Trains & Automobiles', '1987-11-25'),
    (2,1,2,'Ghostbusters', null),
    (2,null,2,'The Great Outdoors', '1988-06-17');

insert into CastMember (ActorID, MovieID, `Role`) values
	(5,1,'John Rambo'),
    (4,2,'Neil Page'),
    (3,2, 'Del Griffith'),
    (1,3,'Dr. Peter Venkman'),
    (2,3,'Dr. Raymond Stanz'),
    (2,4,'Roman Craig'),
    (3,4,'Chet Ripley');
    
delete from actor
where ActorID > 5;
delete from Director
where DirectorID > 2;
delete from rating 
where RatingID > 4; 
delete from Genre
where GenreID > 4;
delete from movie
where MovieID > 4;
delete from CastMember
where CastMemberID > 7;

-- select * from castmember;

update movie set
	Title = 'Ghostbusters (1984)',
    ReleaseDate = '1984-08-06'
where ProjectID = 2;

update genre set
	Genre = 'Action/Adventure'
where GenreID = 1;

DELETE FROM CastMember WHERE MovieID = 1;
DELETE FROM Movie WHERE MovieID = 1;

ALTER TABLE Actor ADD DateOfDeath date NULL;

UPDATE Actor
SET DateOfDeath = '1994-03-04'
WHERE ActorID = 3;
