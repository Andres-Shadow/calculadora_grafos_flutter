import 'package:flutter/material.dart';
import 'package:flutter_application_test/pagina2.dart';
import 'package:flutter_application_test/pagina3.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA DE GRAFOS'),
      ),
      body: const Center(
        child: Text(
          '#TeamVayiyi \n#MePicaLaVayiyi',
          style: TextStyle(fontSize: 25),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Aplicar Warshall'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pagina2(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Aplicar Conexidad'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pagina3(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
