DROP TABLE mass_shootings;
DROP TABLE accidental_deaths;
DROP TABLE accidental_injuries;
DROP TABLE overdoses;

CREATE TABLE overdoses (
  ID INT NOT NULL,
  state TEXT NOT NULL,
  population INT NOT NULL,
  deaths INT NOT NULL,
  PRIMARY KEY (state)
);

CREATE TABLE mass_shootings (
  ID INT NOT NULL,
  incident_id INT NOT NULL,
  incident_date DATE NOT NULL,
  state TEXT NOT NULL,
  city_county TEXT NOT NULL,
  no_injured int NOT NULL,
  no_killed int NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (state) REFERENCES overdoses(state)
);

CREATE TABLE accidental_deaths (
  ID INT NOT NULL,
  incident_id INT NOT NULL,
  incident_date DATE NOT NULL,
  state TEXT NOT NULL,
  city_county TEXT NOT NULL,
  no_injured int NOT NULL,
  no_killed int NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (state) REFERENCES overdoses(state)
);

CREATE TABLE accidental_injuries (
  ID INT NOT NULL,
  incident_id INT NOT NULL,
  incident_date DATE NOT NULL,
  state TEXT NOT NULL,
  city_county TEXT NOT NULL,
  no_injured int NOT NULL,
  no_killed int NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (state) REFERENCES overdoses(state)
);


-- Query:
SELECT o.state, o.deaths, ai.sum_accidental_injuries,
ad.sum_accidental_deaths, ms.sum_mass_shootings
FROM overdoses o
LEFT JOIN
(
    SELECT state, SUM(no_killed) as sum_accidental_injuries
    FROM accidental_injuries
    GROUP BY state
) ai on ai.state = o.state
LEFT JOIN
(
    SELECT state, SUM(no_killed) as sum_accidental_deaths
    FROM accidental_deaths
    GROUP BY state
) ad ON ad.state = o.state
LEFT JOIN
    (
    SELECT state, SUM(no_killed) as sum_mass_shootings
    FROM mass_shootings
    GROUP BY state
    ) ms ON ms.state = o.state;