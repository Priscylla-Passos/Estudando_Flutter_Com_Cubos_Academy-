import 'package:flutter/material.dart';

class MyComponent extends StatelessWidget {
  const MyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Block(cor: Colors.green, largura: 230, altura: 120),
        Block(cor: Colors.amber, largura: 80, altura: 80),
        Block(cor: Colors.blueAccent, largura: 300, altura: 150),
        Block(cor: Colors.redAccent, largura: 200, altura: 100),
      ],
    );
  }
}

class Block extends StatelessWidget {
  final Color cor;
  final double altura;
  final double largura;

  const Block(
      {Key? key,
      required this.cor,
      required this.altura,
      required this.largura})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      height: altura,
      width: largura,
    );
  }
}
