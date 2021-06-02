class Motor {

  bool _estado;

  Motor();

  bool motorEncendido(){
    return this._estado = true; 
  }

  bool motorApagado(){
    return this._estado = false; 
  }

}