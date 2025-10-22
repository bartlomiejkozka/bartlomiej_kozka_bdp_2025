\connect bdp_2025

-- 4.
-- Na podstawie poniższej mapy utwórz trzy tabele: buildings (id, geometry, name), roads
-- (id, geometry, name), poi (id, geometry, name)

create schema if not exists lab1_postgis_intro;

set search_path to lab1_postgis_intro, public;

create table if not exists buildings
(
    id       serial primary key,
    geometry geometry not null,
    name     varchar(100) not null
);

create table if not exists roads 
(
    id       serial primary key,
    geometry geometry not null,
    name     varchar(100) not null
);

create table if not exists poi 
(
    id       serial primary key,
    geometry geometry not null,
    name     varchar(100) not null
);
