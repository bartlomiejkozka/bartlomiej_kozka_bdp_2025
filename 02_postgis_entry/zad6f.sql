\connect bdp_2025

-- 6f.
-- Wypisz pole powierzchni tej części budynku BuildingC, która znajduje się w odległości
-- większej niż 0.5 od budynku BuildingB.

select st_area(st_difference(c.geometry, st_buffer(b.geometry, 0.5))) as area_c_farther_than_0_5_from_b
from lab1_postgis_intro.buildings c, lab1_postgis_intro.buildings b
where c.name = 'BuildingC' and b.name = 'BuildingB';
