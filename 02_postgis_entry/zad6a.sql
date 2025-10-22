\connect bdp_2025

-- 6a.
-- Wyznacz całkowitą długość dróg w analizowanym mieście.

select sum(st_length(geometry)) as total_road_length from lab1_postgis_intro.roads;
