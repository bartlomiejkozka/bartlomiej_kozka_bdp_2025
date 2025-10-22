\connect bdp_2025

-- 5.
-- Współrzędne obiektów oraz nazwy (np. BuildingA) należy odczytać z mapki umieszczonej
-- poniżej. Układ współrzędnych ustaw jako niezdefiniowany.

set search_path to lab1_postgis_intro, public;

insert into buildings (name, geometry) values
    ('BuildingA', st_geomfromtext('polygon((8 1.5, 10.5 1.5, 10.5 4, 8 4, 8 1.5))')),
    ('BuildingB', st_geomfromtext('polygon((4 5, 6 5, 6 7, 4 7, 4 5))')),
    ('BuildingC', st_geomfromtext('polygon((3 6, 5 6, 5 8, 3 8, 3 6))')),
    ('BuildingD', st_geomfromtext('polygon((9 8, 10 8, 10 9, 9 9, 9 8))')),
    ('BuildingF', st_geomfromtext('polygon((1 1, 2 1, 2 2, 1 2, 1 1))'));


insert into roads (name, geometry) values
    ('RoadX', st_geomfromtext('linestring(0 4.5, 12 4.5)')),
    ('RoadY', st_geomfromtext('linestring(7.5 0, 7.5 10.5)'));

insert into poi (name, geometry) values
    ('G', st_geomfromtext('point(1 3.5)')),
    ('H', st_geomfromtext('point(5.5 1.5)')),
    ('I', st_geomfromtext('point(9.5 6)')),
    ('J', st_geomfromtext('point(6.5 6)')),
    ('K', st_geomfromtext('point(6 9.5)'));
