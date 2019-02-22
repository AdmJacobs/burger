-- Drops the burgers_db if it exists currently --
DROP DATABASE IF EXISTS burgers_db;
-- Creates the "burgers_db" database --
CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers(
  id INT NOT NULL identity(1,1),
  burger_name VARCHAR(255) NOT NULL,
  devoured boolean,
  PRIMARY KEY (id)
);