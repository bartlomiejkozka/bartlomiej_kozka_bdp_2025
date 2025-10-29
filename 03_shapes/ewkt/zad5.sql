\connect bdp_2025

-- 5. Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone
-- wokół obiektów nie zawierających łuków.

select sum(st_area(st_buffer(geometry, 5))) as pole_bufora
from lab3_shapes.obiekty
where not st_hasarc(geometry);
