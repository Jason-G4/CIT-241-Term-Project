-- Active: 1738599282766@@127.0.0.1@3306@Planets
-- Active: 1738599282766@@127.0.0.1@3306@Inventory
CREATE DATABASE Planets;

use Planets;

CREATE TABLE Names(
    pl_name varchar(50),
    hostname varchar(50),
    pl_letter varchar(10),
    hd_name varchar(10),
    PRIMARY KEY (pl_name, pl_letter),
    UNIQUE(hostname)
);

CREATE TABLE SystemComposition (
    hostname varchar(50), 
    sy_starnum int,
    sy_planentnum int,
    sy_moonnum int,
    PRIMARY KEY (hostname),
    Foreign Key (hostname) REFERENCES Names(hostname)
);

CREATE TABLE PlanetDiscovery (
    pl_name VARCHAR(50),
    pl_letter VARCHAR(10),
    discoverymethod VARCHAR(100),
    disc_year INT,
    disc_facility VARCHAR(100),
    PRIMARY KEY (pl_name, pl_letter),
    FOREIGN KEY (pl_name, pl_letter) REFERENCES Names(pl_name, pl_letter)
);

CREATE TABLE StellarData (
    hostname VARCHAR(50),
    st_refname VARCHAR(50),
    st_spectype VARCHAR(50),
    st_temp DECIMAL(10,2),
    st_rad DECIMAL(10,2),
    st_mass DECIMAL(10,2),
    PRIMARY KEY (hostname),
    FOREIGN KEY (hostname) REFERENCES Names(hostname)
);

CREATE TABLE PlanetParameters (
    pl_name VARCHAR(50),
    pl_letter VARCHAR(10),
    pl_refname VARCHAR(50),
    pl_orbper DECIMAL(10,2),
    pl_radius DECIMAL(10,2),
    pl_mass DECIMAL(10,2),
    PRIMARY KEY (pl_name, pl_letter),
    FOREIGN KEY (pl_name, pl_letter) REFERENCES Names(pl_name, pl_letter)
);