\connect bdp_2025

-- 6c.
-- Wypisz nazwy i pola powierzchni wszystkich poligonów w warstwie budynki.
-- Wyniki posortuj alfabetycznie.

select name, st_area(geometry) as area
from lab1_postgis_intro.buildings
order by name asc;
