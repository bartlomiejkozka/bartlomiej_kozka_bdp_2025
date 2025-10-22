\connect bdp_2025

-- 6g.
-- Wybierz te budynki, których centroid (ST_Centroid) znajduje się powyżej drogi
-- o nazwie RoadX.

select name
from lab1_postgis_intro.buildings
where st_y(st_centroid(geometry)) >
(
    select st_y(st_centroid(geometry))
    from lab1_postgis_intro.roads
    where name = 'RoadX'
);
