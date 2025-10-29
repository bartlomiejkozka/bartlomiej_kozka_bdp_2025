\connect bdp_2025

INSERT INTO lab3_shapes.obiekty (nazwa, geometry) VALUES
('obiekt4', ST_GeomFromText('LINESTRING(20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5)', 0));
