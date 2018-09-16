DROP DATABASE IF EXISTS friendfinder_db;

CREATE DATABASE friendfinder_db;

USE friendfinder_db;

CREATE TABLE questions (
  id INT NOT NULL AUTO_INCREMENT,
  question VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE choices (
  id INT NOT NULL AUTO_INCREMENT,
  choice VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- CREATE TABLE users (
--   id INT NOT NULL AUTO_INCREMENT,
--   username VARCHAR(255) NOT NULL,
--   email VARCHAR(255) NOT NULL,
--   gender VARCHAR(255) NOT NULL,
--   answers VARCHAR(255) NOT NULL,
--   PRIMARY KEY (id)
-- );

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  gender VARCHAR(255) NOT NULL,
  q1 INT NOT NULL,
  q2 INT NOT NULL,
  q3 INT NOT NULL,
  q4 INT NOT NULL,
  q5 INT NOT NULL,
  q6 INT NOT NULL,
  q7 INT NOT NULL,
  q8 INT NOT NULL,
  q9 INT NOT NULL,
  q10 INT NOT NULL,
  PRIMARY KEY (id)
);


