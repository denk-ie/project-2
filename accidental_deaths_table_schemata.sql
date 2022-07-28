CREATE TABLE accidental_deaths_adults (
  id INT PRIMARY KEY,
  incident_id INT,
  incident_date DATE,
  state TEXT,
  city_or_county TEXT,
  no_killed INT
);
CREATE TABLE accidental_deaths_children (
 id INT PRIMARY KEY,
  incident_id INT,
  incident_date DATE,
  state TEXT,
  city_or_county TEXT,
  no_killed INT
);
CREATE TABLE accidental_deaths_teens (
 id INT PRIMARY KEY,
  incident_id INT,
  incident_date DATE,
  state TEXT,
  city_or_county TEXT,
  no_killed INT
);

SELECT *
FROM accidental_deaths_adults;

SELECT *
FROM accidental_deaths_children;

SELECT *
FROM accidental_deaths_teens;