import 'package:flutter/material.dart';

class Coin extends StatefulWidget {
  const Coin({Key? key}) : super(key: key);

  @override
  _CoinState createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  int cobre = 0;
  int prata = 0;
  int ouro = 0;

  void moedas() {
    setState(() {
      cobre++;

      if (cobre == 10) {
        prata = prata + 1;
        cobre = 0;
      } else if (prata == 10) {
        ouro = ouro + 1;
        prata = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.cyanAccent,
        child: GestureDetector(
          onTap: moedas,
          child: Center(
            child: Text(
              "Moeda de Cobre: $cobre \nMoeda de Prata: $prata \nMoeda de Ouro: $ouro",
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 32.0,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
      ),
    );
  }
}
