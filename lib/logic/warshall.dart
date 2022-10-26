class Warshall {
  late final int nodos;
  late final String mensaje;
  late List<List<int>> m =
      List.generate(nodos, (i) => List.filled(nodos, 0), growable: false);
  late List<List<int>> w =
      List.generate(nodos, (i) => List.filled(nodos, 0), growable: false);
  late String respuesta;

  Warshall(int nodos, String mensaje) {
    this.nodos = nodos;
    this.mensaje = mensaje;
    filear();
    respuesta = "";
  }

  String resolver() {
    int nw = 0;
    int aux = 0;
    int cont = 1;
    for (int k = 0; k < nodos; k++) {
      for (int i = 0; i < nodos; i++) {
        for (int j = 0; j < nodos; j++) {
          aux = and(m[i][k], w[k][j]);
          nw = or(m[i][j], aux);
          w[i][j] = nw;
        }
      }
      respuesta += "\nW $cont \n";
      respuesta += " ------------------\n";
      cont++;
      mostrarMatriz();
      m = w;
    }
    return respuesta;
  }

  int and(int a, int b) {
    return (a == 1 && b == 1) ? 1 : 0;
  }

  int or(int a, int b) {
    return (a == 1 || b == 1) ? 1 : 0;
  }

  void mostrarMatriz() {
    for (int i = 0; i < nodos; i++) {
      for (int j = 0; j < nodos; j++) {
        respuesta += "${w[i][j]}";
      }
      respuesta += "\n";
    }
  }

  void filear() {
    List<String> arr = mensaje.split(",");
    int contador = 0;

    for (int i = 0; i < nodos; i++) {
      for (int j = 0; j < nodos; j++) {
        m[i][j] = int.parse(arr[contador]);
        contador++;
      }
    }
  }
}
