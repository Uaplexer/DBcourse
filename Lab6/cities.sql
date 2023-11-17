SELECT cities.name AS city_name, regions.name AS region_name
FROM cities
JOIN regions ON cities.region = regions.uuid
WHERE cities.population > 350000;

SELECT cities.name AS city_name, regions.name AS region_name
FROM cities
JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';

CREATE TABLE Lines
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    color VARCHAR(255)
);

CREATE TABLE Stations
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255) NOT NULL,
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    line_id INTEGER REFERENCES Lines(id)
);

CREATE TABLE Connections
(
    id SERIAL PRIMARY KEY,
    station_a INTEGER REFERENCES Stations(id),
    station_b INTEGER REFERENCES Stations(id),
    distance DOUBLE PRECISION
);
