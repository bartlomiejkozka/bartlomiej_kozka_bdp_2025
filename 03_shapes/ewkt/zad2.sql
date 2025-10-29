\connect bdp_2025

-- 2. Wyznacz pole powierzchni bufora o wielkości 5 jednostek, który został utworzony wokół
-- najkrótszej linii łączącej obiekt 3 i 4. 

select st_area(st_buffer(st_shortestline(a.geometry, b.geometry), 5)) as pole_bufora
from lab3_shapes.obiekty a, lab3_shapes.obiekty b
where a.nazwa = 'obiekt3' and b.nazwa = 'obiekt4';
