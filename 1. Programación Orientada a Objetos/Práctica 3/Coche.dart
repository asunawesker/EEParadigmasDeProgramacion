import 'Motor.dart';
import 'Puerta.dart';
import 'Rueda.dart';

class Coche{

  Motor _motor;
  Rueda _rueda1, _rueda2, _rueda3, _rueda4;
  Puerta _puerta1, _puerta2;

  Coche(){
    _motor = new Motor();
    _rueda1 = new Rueda();
    _rueda2 = new Rueda();
    _rueda3 = new Rueda();
    _rueda4 = new Rueda();
    _puerta1 = new Puerta();
    _puerta2 = new Puerta();
  }

  void arrancarCoche(){
    print('Motor encendido: ${_motor.motorEncendido()}');
    print('Rueda 1 inflada: ${_rueda1.inflarRueda()}');
    print('Rueda 2 inflada: ${_rueda2.inflarRueda()}');
    print('Rueda 3 inflada: ${_rueda3.inflarRueda()}');
    print('Rueda 4 inflada: ${_rueda4.inflarRueda()}');
    print('Puerta 1 abierta: ${_puerta1.cerrarPuerta()}');
    print('Puerta 2 abierta: ${_puerta2.cerrarPuerta()}');
    print('Ventana puerta 1 abierta: ${_puerta1.ventanaAbierta()}');
    print('Ventana puerta 2 abierta: ${_puerta2.ventanaCerrada()}');
  }

}