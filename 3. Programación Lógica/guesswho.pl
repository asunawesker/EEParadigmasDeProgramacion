/* 
  Hipótesis de animales que se van a comprobar, va a ir preguntando
  las características del animal en turno y si no corresponde, 
  con el operador ! se saltará al siguiente olvidando al animal que 
  acaba de pasar.
*/
sera(jirafa) :- jirafa, !.
sera(asno) :- asno, !.
sera(gato) :- gato, !.
sera(leon) :- leon, !.
sera(perro) :- perro, !.
sera(lobo) :- lobo, !.
sera(koala) :- koala, !.
sera(quokka) :- quokka, !.
sera(canguro) :- canguro, !.
sera(zarigueya) :- zarigueya, !.
sera(marmosa) :- marmosa, !.
sera(mulgara) :- mulgara, !.
sera(bilby) :- orejas_largas, !.
sera(quetzal) :- quetzal, !.
sera(guacamaya) :- guacamaya, !.
sera(tucan) :- tucan, !.
sera(flamenco) :- flamenco, !.
sera(cuervo) :- cuervo, !.
sera(pavo_real): -pavo_real, !.
sera(gallina) :- gallina.


/* 
  Características de los animales
*/

/*Cuadrúpedos*/
jirafa :- cuadrupedo, mamifero, herbivoro, cuello_largo.
asno :- cuadrupedo, mamifero, herbivoro, equideo, dientes_grandes.
gato :- cuadrupedo, mamifero, carnivoro, felino, domestico.
leon :- cuadrupedo, mamifero, carnivoro, felino, no_domestico.
perro :- cuadrupedo, mamifero, carnivoro, canino, domestico.
lobo :- cuadrupedo, mamifero, carnivoro, canino, no_domestico.

/*Marsupiales*/
zarigueya :- marsupial, hocico_largo, nocturno, color_gris, dedos_grandes. 
quokka :- marsupial, herbivoro, color_cafe, redondo, sonriente.
marmosa :- marsupial, hocico_largo, insectivoro, cola_larga.
koala :- marsupial, herbivoro, color_gris, perezoso.
canguro :- marsupial, herbivoro, alto, tiene_o_es(salta_alto).
bilby :- marsupial, carnivoro, orejas_largas.
mulgara :- marsupial, hocico_largo, cola_larga, color_gris, insectivoro.  

/*Aves*/
quetzal :- ave, no_domestico, omnivoro, plumaje_brillante, cola_larga.
guacamaya :- ave, no_domestico, herbivoro, plumas_rojas, tiene_o_es(pico_fuerte).
tucan :- ave, no_domestico, plumas_negras, tiene_o_es(pico_alargado).
flamenco :- ave, no_domestico, plumas_rosas, alto.
cuervo :- ave, no_domestico, omnivoro, plumas_negras, tiene_o_es(largo).
pavo_real :- ave, domestico, omnivoro, plumaje_brillante, tiene_o_es(cola_es_un_abanico).
gallina :- ave, domestico.

alto :- tiene_o_es(alto).
/* 
  Reglas generales con las que diferenciaremos a los animales 
*/
cuadrupedo :- tiene_o_es(cuatro_patas).
marsupial :- tiene_o_es(dos_patas).
mamifero :- tiene_o_es(color).
cuello_largo :- tiene_o_es(tiene_cuello_largo).
orejas_largas :- tiene_o_es(orejas_largas).
dientes_grandes :- tiene_o_es(dientes_grandes).
herbivoro :- tiene_o_es(herbivoro).
omnivoro :- tiene_o_es(omnivoro).
ave :- tiene_o_es(tiene_alas).
voladora :- tiene_o_es(volador).
no_voladora :- tiene_o_es(no_volador).
carnivoro :- tiene_o_es(carnivoro).
domestico :- tiene_o_es(domestico).
no_domestico :- tiene_o_es(no_domestico).
alimento :- tiene_o_es(para_consumo_humano).
felino :- tiene_o_es(felino).
canino :- tiene_o_es(canino).
plumaje_brillante :- tiene_o_es(plumaje_brillante).
equideo :- tiene_o_es(equideo).
nocturno :- tiene_o_es(nocturno).
plumas_rosas :- tiene_o_es(plumas_rosas).
plumas_negras :- tiene_o_es(plumas_negras).
plumas_rojas :- tiene_o_es(plumas_rojas).
color_gris :- tiene_o_es(color_gris).
redondo :- tiene_o_es(redondo). 
sonriente :- tiene_o_es(cara_sonriente).
color_cafe :- tiene_o_es(color_cafe).
perezoso :- tiene_o_es(perezoso).
dedos_grandes :- tiene_o_es(dedos_grandes).
insectivoro :- tiene_o_es(insectivoro).
cola_larga :- tiene_o_es(cola_larga).
hocico_largo :- tiene_o_es(hocico_largo).

/* 
  Función que preguntará por cada característica 
*/
tiene_o_es(S) :- (cumple(S) -> true ; (no_cumple(S) -> fail ; preguntar(S))).

/* 
  Con esta función es que podremos avanzar por el árbol, 
  se irá preguntando característica por característica 
*/
/*
  Avanzamos en función de la respuesta a la característica
  esto nos llevará hacia un nuevo animal o no
*/

/*
  Con assert, guardamos el camino seguido 
  (Inserta una nueva cláusula como si se hubiera escrito al principio del programa)
*/
preguntar(Pregunta) :-
  write('¿El animal que piensas tiene lasiguiente característica: '),
  write(Pregunta),
  write('? (s/n) '), 
  read(Respuesta),
  nl,
  ((Respuesta == s) -> assert(cumple(Pregunta)) ; assert(no_cumple(Pregunta)), fail).

/*
  Función que pregunta si queremos jugar nuevamente
*/
jugar_otra_vez :- 
  write('¿Quieres seguir jugando? '),
  read(Respuesta3), 
  ((Respuesta3 == s) -> jugar ; nl, nl, write('Juego terminado'), nl).

/*
  Hace dinámicas las funciones que se van a añadir con assert
  se hacen dynamic porque van a ser las que estén cambiando
  durante todo el programa
*/
:- dynamic plumaje_brillante/0, verifocar/1, cumple/1,no_cumple/1,sera/1,tiene_o_es/1.

/* 
  Borramos todos los valores almacenados con assert
*/
borrar :- retract(cumple(_)),fail.
borrar :- retract(no_cumple(_)),fail.
borrar. 


/*
  Función principal
*/
/*En primer lugar llamamos a la función hipótesis.
  Con esta función empezaremos en el nodo raíz e iremos avanzando
  en el árbol */
  /*Cuando lleguemos a una hoja del árbol, habremos encontrado la
  respuesta
*/
jugar :-
  nl,
  write('Debes responder las siguientes preguntas para que adivine el animal'),
  nl,
  nl,
  sera(Animal),
  nl,
  write('Creo que el animal es '),
  write(Animal),
  nl,
  borrar,
  jugar_otra_vez.