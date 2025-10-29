\connect bdp_2025

INSERT INTO lab3_shapes.obiekty (nazwa, geometry) VALUES
('obiekt3', ST_GeomFromText('POLYGON((7 15, 10 17, 12 13, 7 15))', 0));
