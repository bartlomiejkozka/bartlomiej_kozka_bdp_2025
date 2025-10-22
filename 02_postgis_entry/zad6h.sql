\connect bdp_2025

-- 6h.
-- Oblicz pole powierzchni tych części budynku BuildingC i poligonu o współrzędnych
-- (4 7, 6 7, 6 8, 4 8, 4 7), które nie są wspólne dla tych dwóch obiektów.

with poly as 
(
  select st_geomfromtext('polygon((4 7, 6 7, 6 8, 4 8, 4 7))') as geom
)
select st_area
(
    st_symdifference    -- Computes a geometry representing the portions of geometries A and B that do not intersect.
    (
        (select geometry from lab1_postgis_intro.buildings where name = 'BuildingC'),
        (select geom from poly)
    )
) as area_symmetric_difference;
