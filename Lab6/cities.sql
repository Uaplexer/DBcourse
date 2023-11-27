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
    line_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    color VARCHAR(255)
);

CREATE TABLE Stations
(
    station_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255) NOT NULL,
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    line_id INTEGER REFERENCES Lines(line_id)
);

CREATE TABLE Connections
(
    connection_id SERIAL PRIMARY KEY,
    station_a INTEGER REFERENCES Stations(station_id),
    station_b INTEGER REFERENCES Stations(station_id),
    distance DOUBLE PRECISION
);
