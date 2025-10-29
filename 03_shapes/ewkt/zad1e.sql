\connect bdp_2025

INSERT INTO lab3_shapes.obiekty (nazwa, geometry) VALUES
('obiekt5', ST_GeomFromText('MULTIPOINTZ((30 30 59), (38 32 234))', 0));
