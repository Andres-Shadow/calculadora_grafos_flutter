class Conexidad {
  late final int nodos;
  late final String mensaje;
  late String respuesta;
  late List<List<int>> m =
      List.generate(nodos, (i) => List.filled(nodos, 0), growable: false);
  late List<List<int>> m2 =
      List.generate(nodos, (i) => List.filled(nodos, 0), growable: false);

  Conexidad(int nodos, String mensaje) {
    this.nodos = nodos;
    this.mensaje = mensaje;
    respuesta = "";
    filear();
  }

  String resolver() {
    bool conexo = false;

    for (int i = 0; i <= nodos; i++) {
      if (!verificar()) {
        respuesta += "M ${i + 2} \n";
        m2 = multiplicar(m, m2);
        imprimir(m2);
      } else {
        conexo = true;
      }
    }

    if (conexo) {
      respuesta += "\n\nGrafo Conexo :D\n\n";
    } else {
      respuesta += "\n\nGrafo No Conexo :D\n\n";
    }

    return respuesta;
  }

  void imprimir(List<List<int>> m2) {
    respuesta += "------------------------\n";
    for (int i = 0; i < nodos; i++) {
      for (int j = 0; j < nodos; j++) {
        respuesta += "${m2[i][j]} ";
      }
      respuesta += "\n";
    }
    respuesta += "------------------------\n";
  }

  List<List<int>> multiplicar(List<List<int>> m, List<List<int>> m2) {
    int suma;
    List<List<int>> aux =
        List.generate(nodos, (i) => List.filled(nodos, 0), growable: false);

    for (int i = 0; i < nodos; i++) {
      for (int j = 0; j < nodos; j++) {
        suma = 0;
        for (int k = 0; k < nodos; k++) {
          suma += m[i][k] * m2[k][j];
        }
        aux[i][j] = suma;
      }
    }

    return aux;
  }

  bool verificar() {
    bool conexo = true;
    for (int i = 0; i < nodos; i++) {
      for (int j = 0; j < nodos; j++) {
        if (m2[i][j] == 0) {
          conexo = false;
        }
      }
    }
    return conexo;
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

    contador = 0;
    for (int i = 0; i < nodos; i++) {
      for (int j = 0; j < nodos; j++) {
        m2[i][j] = int.parse(arr[contador]);
        contador++;
      }
    }
  }
}
