import 'package:flutter/material.dart';
import 'package:flutter_application_test/logic/calculadora.dart';

class Pagina3 extends StatefulWidget {
  const Pagina3({super.key});

  @override
  State<Pagina3> createState() => _Pagina3();
}

class _Pagina3 extends State<Pagina3> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  Calculadora calc = Calculadora();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barra de navegacion'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 200,
              margin: const EdgeInsets.all(25),
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Cantidad de nodos',
                ),
                controller: myController,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Matriz de relaciones',
                ),
                controller: myController2,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                minLines: 1,
                maxLines: 5,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Resultado'),
                                CloseButton(
                                    color: const Color(0xFFD5D3D3),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    })
                              ]),
                          content: Text(
                            calc.resolverConexidad(int.parse(myController.text),
                                myController2.text),
                            textAlign: TextAlign.center,
                          ),
                        );
                      });
                },
                child: const Text(
                  "Aplicar Conexidad",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
