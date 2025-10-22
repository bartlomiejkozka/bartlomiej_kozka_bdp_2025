\connect bdp_2025

-- 6b.
-- Wypisz geometrię (WKT), pole powierzchni oraz obwód poligonu reprezentującego
-- budynek o nazwie BuildingA. 

select
    st_astext(geometry)     as wkt,
    st_area(geometry)       as area,
    st_perimeter(geometry)  as perimeter
from lab1_postgis_intro.buildings
where name = 'BuildingA';
