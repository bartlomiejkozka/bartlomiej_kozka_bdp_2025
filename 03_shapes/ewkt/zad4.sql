\connect bdp_2025

-- 4. W tabeli obiekty, jako obiekt7 zapisz obiekt złożony z obiektu 3 i obiektu 4.

insert into lab3_shapes.obiekty (nazwa, geometry)
select 'obiekt7', st_collect(a.geometry, b.geometry)
from lab3_shapes.obiekty a, lab3_shapes.obiekty b
where a.nazwa = 'obiekt3' and b.nazwa = 'obiekt4';
