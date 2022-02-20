import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Column(
        children: [
        Image.asset('assets/Bolo-simples.png'),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 120,
              width: 120,
              color: Colors.green,
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.redAccent,
            ),
            Container(
              height: 120, 
              width: 120, 
              color: Colors.blueAccent
              ),
          ]
        )
      ]
      ),
    );
  }
}
