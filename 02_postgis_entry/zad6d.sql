\connect bdp_2025

-- 6d.
-- Wypisz nazwy i obwody 2 budynków o największej powierzchni.

select name, st_perimeter(geometry) as perimeter
from lab1_postgis_intro.buildings
order by st_area(geometry) desc
limit 2;
