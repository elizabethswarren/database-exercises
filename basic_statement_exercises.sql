-- Basic Statements Exercises

-- 1. 
USE albums_db;

-- 2.
SHOW CREATE table albums;
-- PRIMARY KEY (`id`)
-- Instructor Answer : DESCRIBE albums

-- 3.
SELECT *
FROM albums;
-- the name of the album

-- 4. 
	-- album sales
    /* Instructor answer : 
    SELECT*
    FROM albums; */
    
-- 5.
SELECT *
FROM albums
WHERE artist = 'Pink Floyd';
/* 'Pink Floyd','The Dark Side of the Moon'
   'Pink Floyd','The Wall' */

-- 6.
SELECT *
FROM albums
WHERE artist = 'The Beatles';
-- 1967
/* Instructor answer:
SELECT release_date
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band" */

-- 7.
SELECT *
FROM albums
WHERE name = 'Nevermind';
-- Grunge, alternative rock

-- 8.
SELECT *
FROM albums
WHERE release_date BETWEEN 1989 and 1999;
-- 11
/* Instructor answer: Integers are inclusive.
SELECT *
FROM albums
WHERE release_date BETWEEN 1990 and 1999; */

-- 9. 
SELECT name, sales AS low_selling_albums
FROM albums
WHERE sales < 20;
/* 'Abbey Road','14.4'
'Bad','19.3'
'Born in the U.S.A.','19.6'
'Brothers in Arms','17.7'
'Dangerous','16.3'
'Dirty Dancing','17.9'
'Grease: The Original Soundtrack from the Motion Picture','14.4'
'Let\'s Talk About Love','19.3'
'Nevermind','16.7'
'Sgt. Pepper\'s Lonely Hearts Club Band','13.1'
'The Immaculate Collection','19.4'
'The Wall','17.6'
'Titanic: Music from the Motion Picture','18.1'

Instructor answer:
SELECT name, sales AS low_selling_albums
FROM albums
WHERE sales < =20; */
