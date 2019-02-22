-- Drops the burgers_db if it exists currently --
DROP DATABASE IF EXISTS burgers_db;
-- Creates the "burgers_db" database --
CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  burger_name VARCHAR(50) NOT NULL,
  devoured BOOLEAN default false,
  date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);