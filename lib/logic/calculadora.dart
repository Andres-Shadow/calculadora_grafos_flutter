import 'package:flutter_application_test/logic/conexidad.dart';
import 'package:flutter_application_test/logic/warshall.dart';

class Calculadora {
  Warshall? warshall;
  Conexidad? conexidad;
  Calculadora();

  String resolverWarshall(int nodos, String mensaje) {
    String respuesta = "";
    warshall = Warshall(nodos, mensaje);
    respuesta = warshall!.resolver();
    return respuesta;
  }

  String resolverConexidad(int nodos, String mensaje) {
    String respuesta = "";
    conexidad = Conexidad(nodos, mensaje);
    respuesta = conexidad!.resolver();
    return respuesta;
  }
}
