\connect bdp_2025

-- 6e.
-- Wyznacz najkrótszą odległość między budynkiem BuildingC a punktem K.

select st_distance(b.geometry, p.geometry) as dist_c_to_k
from lab1_postgis_intro.buildings b
join lab1_postgis_intro.poi p on p.name = 'K'
where b.name = 'BuildingC';
