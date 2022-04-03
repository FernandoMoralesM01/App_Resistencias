import 'package:flutter/material.dart';

import 'Configuración.dart';             //0
import 'Divisor.dart';                   //1
import 'CalculoDeResistencias.dart';     //2
import 'GeneradorDeCorriente.dart';      //3
import 'ReduccionDeResistencias.dart';   //4


class Window extends StatelessWidget {

  final int index;
  //final void Function(String str) AppState;

  Window(this.index);

  @override
  Widget build(BuildContext context) {

    switch (index)
    {
      case 0:       ///CONFIGURATION
        return Configuration(index);
        break;
      case 1:       ///DIVISOR DE VOLTAJE
        return DivisorDeVoltaje();
        break;
      case 2:       ///Cálculo de resistencias
        return CalculoDeResistencias(index);
        break;
      case 3:       ///Generador de corriente
        return GeneradorDeCorriente(index);
        break;
      case 4:       ///Reducción de resistencias
        return ReduccionDeResistencias(index);
        break;
      default:
        return Container();
        break;
    }
  }
}


class AppBarTxt extends StatelessWidget {

  final int index;
  AppBarTxt(this.index);

  List<String> Title = [
    'Configuración',
    'Divisor de voltaje',
    'Cálculo de resistencias',
    'Generador de corriente',
    'Reducción de resistencias',
  ];

  @override
  Widget build(BuildContext context) {
    return Text(Title[index],
      style: TextStyle(
          fontSize: 20,
          fontFamily: 'Courier New',
          fontWeight: FontWeight.bold
      ),
    );
  }
}
