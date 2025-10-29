\connect bdp_2025

insert into lab3_shapes.obiekty (nazwa, geometry) values
(   
    'obiekt2',
    ST_GeomFromText(
        'curvepolygon(
            compoundcurve(
                (10 6, 14 6),
                circularstring(14 6, 16 4, 14 2),
                circularstring(14 2, 12 0, 10 2),
                (10 2, 10 6)
            ),
            circularstring(11 2, 12 3, 13 2, 12 1, 11 2)
        )', 0
    )
);
