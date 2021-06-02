mujer(molly).
mujer(ginny).
mujer(hermione).
mujer(rose).

hombre(arthur).
hombre(bill).
hombre(percy).
hombre(george).
hombre(fred).
hombre(harry).
hombre(ron).
hombre(hugo).

engendrador(molly,bill).
engendrador(molly,percy).
engendrador(molly,george).
engendrador(molly,ginny).
engendrador(molly,ron).
engendrador(arthur,bill).
engendrador(arthur,percy).
engendrador(arthur,george).
engendrador(arthur,ginny).
engendrador(arthur,ron).
engendrador(ron,hugo).
engendrador(ron,rose).
engendrador(hermione,hugo).
engendrador(hermione,rose).

%Para ser padre debe ser hombre y el primer argumento del átomo engendrador%
%debe de coincidir con el nombre%
padre(X)  :- hombre(X), engendrador(X,_).
%Para ser madre debe ser mujer y el primer argumento del átomo engendrador%
%debe de coincidir con el nombre%
madre(X)  :- mujer(X), engendrador(X,_).
%Para ser padre de debe tal persona debe ser hombre y tanto los argumentos del átomo%
%engendrador debe de contener a las variables X y Y que pasamos%
padre(X,Y) :- hombre(X),engendrador(X,Y).
%Para ser madre de debe tal persona debe ser mujer y tanto los argumentos del átomo%
%engendrador debe de contener a las variables X y Y que pasamos%
madre(X,Y) :- mujer(X),engendrador(X,Y).
%Para ser abuelo de alguien, Y debe ser hijo del hijo del padre y%
%debe ser padre del hijo de quien es su nieto%
abuelo(X,Y) :- engendrador(Z,Y),padre(X,Z).
%Para ser abuela de alguien, Y debe ser hijo del hijo de la madre y%
%debe ser madre del hijo de quien es su nieto%
abuela(X,Y) :- engendrador(Z,Y),madre(X,Z).
%deben compartir el mismo progenitor%
hermanos(X,Y) :- engendrador(Z,X), engendrador(Z,Y),not(X==Y).
nieta(X,Y) :- mujer(X), abuelo(Y,X); abuela(Y,X).
nieto(X,Y) :- hombre(X), abuelo(Y,X); abuela(Y,X).