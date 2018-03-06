go :- hipotesis(Animal),
      write('I guess that the animal is: '),
      write(Animal),
      nl,
      undo.

hipotesis(embalar_el_objeto_fragil)   :-regla1,!.
hipotesis(embalar)   :-regla2,!.
hipotesis(embalar)   :-regla3,!.
hipotesis(embalar)   :-regla4,!.
hipotesis(embalar)   :-regla5,!.
hipotesis(embalar)   :-regla6,!.
hipotesis(embalar)   :-regla7,!.
hipotesis(embalar)   :-regla8,!.
hipotesis(embalar)   :-regla9,!.
hipotesis(embalar)   :-regla10,!.
hipotesis(embalar)   :-regla11,!.
hipotesis(embalar)   :-regla12,!.
hipotesis(embalar)   :-regla13,!.

hipotesis(unknown).             /* no se sabe */

/* Reglas*/

regla1:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_no_ha_sido_embalado).


regla2:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla3:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla4:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla5:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla6:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla7:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla8:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla9:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla10:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla11:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla12:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).

regla13:-  verificar(estado_embalar_objetos_frajiles),
          verificar(existe_objeto_fragil_a_embalar),
          verificar(existe_caja_vacia_o_caja_con_colo_objetos_frajiles),
          verificar(el_objeto_fragil_ya_fue_embalado).



/* van hacer para comprobare estados de las cajas */




pregunta(Question) :-
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

verificar(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     pregunta(S))).

undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
