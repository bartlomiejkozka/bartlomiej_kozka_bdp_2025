\connect bdp_2025

-- 1a
-- Utwórz tabelę obiekty. W tabeli umieść nazwy i geometrie obiektów przedstawionych poniżej.
-- Układ odniesienia ustal jako niezdefiniowany.
-- Nazwa: obiekt1

create schema if not exists lab3_shapes;

set search_path to lab3_shapes, public;

create table if not exists obiekty 
(
    id       serial primary key,
    nazwa    text,
    geometry geometry
);

insert into obiekty (nazwa, geometry) values
(   
    'obiekt1',
    ST_GeomFromText(
        'compoundcurve(
            (0 1, 1 1),
            circularstring(1 1, 2 0, 3 1),
            circularstring(3 1, 4 2, 5 1),
            (5 1, 6 1)
        )', 0
    )
);
