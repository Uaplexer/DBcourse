SELECT cities.name AS city_name, regions.name AS region_name
FROM cities
JOIN regions ON cities.region = regions.uuid
WHERE cities.population > 350000;

SELECT cities.name AS city_name, regions.name AS region_name
FROM cities
JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';

CREATE TABLE lines
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    color VARCHAR(255),
);

CREATE TABLE stations
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255) NOT NULL,
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    prev_station_id INTEGER INTEGER REFERENCES Stations(station_id),
    next_station_id INTEGER INTEGER REFERENCES Stations(station_id),
    line_id INTEGER REFERENCES Lines(line_id),
);

CREATE TABLE connections
(
    id SERIAL PRIMARY KEY,
    station_a INTEGER REFERENCES Stations(station_id),
    station_b INTEGER REFERENCES Stations(station_id),
    distance DOUBLE PRECISION,
    travel_time INT NOT NULL,
    connection_type VARCHAR(255) NOT NULL,
);
