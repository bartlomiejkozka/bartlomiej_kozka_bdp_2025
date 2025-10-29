\connect bdp_2025

-- 3. Zamień obiekt4 na poligon. Jaki warunek musi być spełniony, aby można było wykonać to
-- zadanie? Zapewnij te warunki.

update lab3_shapes.obiekty
set geometry = st_makepolygon(st_addpoint(geometry, st_startpoint(geometry)))
where nazwa = 'obiekt4';
