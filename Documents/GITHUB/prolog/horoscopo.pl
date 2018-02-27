rata(rata,Anio):-(
    X is (Anio mod 1900),
    0 is (X mod 12)
).
bufalo(bufalo,Anio):-(
    X is (Anio mod 1901),
    0 is (X mod 12)
).
tigre(tigre,Anio):-(
    X is (Anio mod 1902),
    0 is (X mod 12)
).
conejo(conejo,Anio):-(
    X is (Anio mod 1903),
    0 is (X mod 12)
).
dragon(dragon,Anio):-(
    X is (Anio mod 1904),
    0 is (X mod 12)
).
serpiente(serpiente,Anio):-(
    X is (Anio mod 1905),
    0 is (X mod 12)
).
caballo(caballo,Anio):-(
    X is (Anio mod 1906),
    0 is (X mod 12)
).
cabra(cabra,Anio):-(
    X is (Anio mod 1907),
    0 is (X mod 12)
).
mono(mono,Anio):-(
    X is (Anio mod 1908),
    0 is (X mod 12)
).
gallo(gallo,Anio):-(
    X is (Anio mod 1909),
    0 is (X mod 12)
).
perro(perro,Anio):-(
    X is (Anio mod 1910),
    0 is (X mod 12)
).
cerdo(cerdo,Anio):-(
    X is (Anio mod 1911),
    0 is (X mod 12)
 ).

signo(Su_animal_es):-nl,
    write("Ingrese el año de su nacimiento sefuido de un punto, ejemplo: 1996. "),
    nl,
    read(A),
    nl,
    (
                                 rata(Su_animal_es,A);
                                 bufalo(Su_animal_es,A);
                                 tigre(Su_animal_es,A);
                                 conejo(Su_animal_es,A);
                                 dragon(Su_animal_es,A);
                                 serpiente(Su_animal_es,A);
                                 caballo(Su_animal_es,A);
                                 cabra(Su_animal_es,A);
                                 mono(Su_animal_es,A);
                                 gallo(Su_animal_es,A);
                                 perro(Su_animal_es,A);
                                 cerdo(Su_animal_es,A)

    ).

:-nl,nl,write('Digite su año de nacimiento para establecer su signo (animal correspondiente al horoscopo chino) '), nl,
nl,write('Digite:  signo(Su_animal_es). '), nl,nl,nl.
































