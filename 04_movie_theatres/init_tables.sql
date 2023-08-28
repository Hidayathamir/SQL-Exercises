CREATE TABLE Movies (
  Code INTEGER PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Rating VARCHAR(255)
);

CREATE TABLE MovieTheaters (
  Code INTEGER PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Movie INTEGER,
  FOREIGN KEY (Movie) REFERENCES Movies(Code)
) ENGINE = INNODB;

INSERT INTO
  Movies(Code, Title, Rating)
VALUES
  (9, 'Citizen King', 'G'),
  (1, 'Citizen Kane', 'PG'),
  (2, 'Singin'' in the Rain', 'G'),
  (3, 'The Wizard of Oz', 'G'),
  (4, 'The Quiet Man', NULL),
  (5, 'North by Northwest', NULL),
  (6, 'The Last Tango in Paris', 'NC-17'),
  (7, 'Some Like it Hot', 'PG-13'),
  (8, 'A Night at the Opera', NULL);

INSERT INTO
  MovieTheaters(Code, Name, Movie)
VALUES
  (1, 'Odeon', 5),
  (2, 'Imperial', 1),
  (3, 'Majestic', NULL),
  (4, 'Royale', 6),
  (5, 'Paraiso', 3),
  (6, 'Nickelodeon', NULL);