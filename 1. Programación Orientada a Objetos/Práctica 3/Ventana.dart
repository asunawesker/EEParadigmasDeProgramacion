class Ventana{

  bool _ventana;

  Ventana();

  bool ventanaAbierta(){
    return this._ventana = true;
  }

  bool ventanaCerrada(){
    return this._ventana = false;
  }

}