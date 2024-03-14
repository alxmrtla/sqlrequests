DROP TABLE IF EXISTS  owners;
DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS cat_owners;
DROP TABLE IF EXISTS toys;
PRAGMA foreign_keys=on; -- Turns foreign key support in SQLite3 on
-- Your code here

CREATE TABLE owners (
  id INT PRIMARY key,
  first_name varchar(100),
  last_name varchar(100)
);

CREATE TABLE cats (
  id INTEGER PRIMARY key,
  name VARCHAR(100),
  birth_year INTEGER,
  FOREIGN KEY cat_owner REFERENCES cat_owners(cat_id)
);

CREATE TABLE cat_owners (
  cat_id INTEGER FOREIGN KEY REFERENCES cats(id),
  owner_id INTEGER FOREIGN KEY REFERENCES owners(id)
);

CREATE TABLE toys(
  id INTEGER PRIMARY KEY,
  name VARCHAR(100),
  FOREIGN KEY cat_id REFERENCES cats(id)
  );

INSERT INTO owners
  (first_name, last_name)
VALUES
  ('Nathan', 'Shanahan'),
  ('Joycelyn', 'Cummerata'),
  ('Weston', 'Jones'),
  ('Melynda', 'Abshire'),
  ('George', 'Beatty'),
  ('Jonathan', 'Arbuckle'),
  ('Hermione', 'Granger');

INSERT INTO cats
  (name, birth_year)
VALUES
  ('Smudge', 2014),
  ('Molly', 2015),
  ('Lucky', 2016),
  ('Bella', 2020),
  ('Tiger', 2012),
  ('Oscar', 2010),
  ('Garfield', 2009),
  ('Crookshanks', 2017);

INSERT INTO cat_owners
  (cat_id, owner_id)
VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 3),
  (4, 4),
  (5, 4),
  (5, 5),
  (7, 6),
  (8, 7);

INSERT INTO toys
  (cat_id, name)
VALUES
  (1, 'Catnip Mouse'),
  (2, 'Feather Wand'),
  (2, 'Scratcher'),
  (2, 'Laser Pointer'),
  (3, 'Chew Toy'),
  (4, 'Tunnel'),
  (4, 'Flopping Fish'),
  (7, 'Cheetos'),
  (8, 'Crinkle Ball'),
  (8, 'Yarn');
