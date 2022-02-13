import 'package:flutter/material.dart';

void main() {
  //Inicio da questão - TOPICO 1
  //   const MaterialApp(
  //   home: Card(
  //     child: Center(
  //       child: Text('Buenas'),
  //     ),
  //   ),
  // )
  //Altere o código da aplicação para mostrar o texto ok que está na classe App
  // TOPICO 1
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TOPICO 2 Cor de Fundo
      // home: Card(
      //   color: Colors.pinkAccent,
      //   child: Center(
      //     child: Text("Ok"),
      //topico 3 Cor da Fonte
      //child: Text("Ok", style: TextStyle(color: Colors.white)),
      //TOPICO 4 - Tamanho da Fonte
      //// child: Text("Flutter", style: TextStyle(color: Colors.white, fontSize: 32.0)),
      //TOPICO 5 - Fundo Gradiente

      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade400,
              Colors.purple.shade600,
            ],
          ),
        ),
        child: const Center(
            child: Text(
          'Flutter Gradiente',
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 32.0),
        )),
      ),
    );
  }
}
