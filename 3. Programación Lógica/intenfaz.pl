:- use_module(library(pce)).

ejemplo :-
      /*
      * Crea el objeto dialogo en la variable D
      */
      new(D, dialog('Nombre del Dialogo')),
      /*
       * Crea el objeto boton almacenandolo en la variable @boton de tal forma
       * que al pulsar sobre el boton libere la memoria y cierre la ventana)
       */
      new(@boton, button('Cerrar Dialogo',
      and(
      message(D, destroy),
      message(D, free),
      message(@boton, free)))),
      /*
       * Inserta el botón en el diálogo
      */
      send(D, append(@boton)),
      /*
       * Le envia el mensaje open al dialogo para que cree y muestre la ventana.
      */
      send(D, open).