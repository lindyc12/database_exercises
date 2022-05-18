use albums_db;
show tables;
describe albums;

SELECT DISTINCT(name) FROM albums;
SHOW KEYS FROM albums WHERE Key_name = 'PRIMARY';
show tables;
describe albums;
show create table albums;
CREATE TABLE `albums` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `artist` varchar(240) DEFAULT NULL,
  `name` varchar(240) NOT NULL,
  `release_date` int DEFAULT NULL,
  `sales` float DEFAULT NULL,
  `genre` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1

#primary key is 'id'
SELECT MIN(release_date) FROM albums;
show tables;
SELECT MIN(release_date) FROM albums; #1967
SELECT Max(release_date) FROM albums; #2011
select * from albums where artist like '%pink floyd%'; #two
select release_date from albums where name like "%Sgt. Pepper's Lonely Hearts Club Band%"; #1967
select genre from albums where name='Nevermind'; #grunge, rock alternative

select * from albums where release_date = 1990; #the immaculate collection
select count(*) from albums where sales < 20; #13
select * from albums where genre = 'rock'; #it only showed 'rock' because = was used instead of 'like'





