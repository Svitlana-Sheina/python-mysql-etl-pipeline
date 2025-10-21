-- ==========================================
-- Project: Python → MySQL | Wikipedia & API Data Scraping
-- Author: Svitlana Sheina
-- Description: SQL schema for storing city, population, weather, and flight data acquired from Wikipedia as well as from Aerodatabox and OpenWeather APIs.
-- ==========================================

-- 1. Create a new database
CREATE DATABASE wiki_cities;
USE wiki_cities;

-- 2. Create a master table for city information
CREATE TABLE city_data (
    city_id INT AUTO_INCREMENT,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    latitude DECIMAL(8,5),
    longitude DECIMAL(8,5),
    PRIMARY KEY (city_id) 
); 

-- Data is inserted from Jupyter Notebook (Python script).
-- Verify that the data is populated and that city_id is auto-generated.
select *
from city_data;

-- The table below will store population data fetched from Wikipedia.
-- Each record is linked to the corresponding city_id from the city_data table.
CREATE TABLE population (
population_row_id INT auto_increment, 
city_id INT, 
City VARCHAR(50),
Population VARCHAR(50), 
Population_Timestamp VARCHAR(50),
PRIMARY KEY (population_row_id), 
FOREIGN KEY (city_id) REFERENCES city_data(city_id)
);

SELECT *
FROM population; 

-- 3. Create a table for weather data (from the OpenWeather API)
CREATE TABLE weather_cities (
weather_row_id INT auto_increment, 
city_id INT, 
city VARCHAR(50),
forecast_time datetime,
temperature decimal (5,2),
feels_like decimal (5,2),
forecast VARCHAR(50),
humidity decimal (5,2),
clouds decimal (5,2),
wind_speed decimal (5,2),
rain_in_last_3h decimal (5,2),
PRIMARY KEY (weather_row_id), 
FOREIGN KEY (city_id) REFERENCES city_data(city_id)

);

select *
from weather_cities;

-- 4. Create a table to store airport data retrieved from the Aerobox API
CREATE TABLE airports_list (
    airport_id INT AUTO_INCREMENT,
    city_id INT,
    city VARCHAR(50),
    icao VARCHAR(50) UNIQUE, 
    iata VARCHAR(50),
    name VARCHAR(100),
    PRIMARY KEY (airport_id),
    FOREIGN KEY (city_id) REFERENCES city_data(city_id)
);

select *
from airports_list;

-- 5. Create a table to store flight movement data retrieved from the Aerobox API
CREATE TABLE flights_data (
    flight_id INT AUTO_INCREMENT,
    dest_airport_icao VARCHAR(50),
    `number` VARCHAR(50),
    movement_airport_icao VARCHAR(50),
    movement_airport_name VARCHAR(100),
    arrival_time DATETIME,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (dest_airport_icao) REFERENCES airports_list(icao)
);

select *
from flights_data; 



