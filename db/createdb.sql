CREATE DATABASE guessgame;

CREATE TABLE IF NOT EXISTS `data` (
`rank` VARCHAR(255),
`id` INT,
`title` VARCHAR(255),
`fullTitle` VARCHAR(255),
`year` INT,
`image` VARCHAR(255),
`crew` VARCHAR(255),
`imDbRating` FLOAT,
`imDbRatingCount` INT,
PRIMARY KEY(id)
);

INSERT INTO data VALUES
('tt0111161',1,'The Shawshank Redemption','The Shawshank Redemption (1994)',1994,'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0\,3\,128\,176_AL_.jpg','Frank Darabont (dir.)\, Tim Robbins\, Morgan Freeman',9.2,2647137);