\connect bdp_2025

INSERT INTO lab3_shapes.obiekty (nazwa, geometry) VALUES
('obiekt6', ST_GeomFromText('GEOMETRYCOLLECTION(LINESTRING(1 1, 3 2), POINT(4 2))', 0));
