import 'Ventana.dart';

class Puerta {

  bool _estado;
  Ventana ventana;

  Puerta(){
    ventana = new Ventana();
  }

  bool abrirPuerta(){
    return this._estado = true; 
  }

  bool cerrarPuerta(){
    return this._estado = false; 
  }
  
  bool ventanaAbierta(){
    return ventana.ventanaAbierta();
  }

  bool ventanaCerrada(){
    return ventana.ventanaCerrada();
  }

}