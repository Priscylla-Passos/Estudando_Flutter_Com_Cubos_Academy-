import 'package:flutter/material.dart';

class Alinhamento extends StatelessWidget {
  const Alinhamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Block(cor: Colors.green),
          Block(cor: Colors.yellowAccent),
          Block(cor: Colors.red),
        ],
      ),
    );
  }
}

class Block extends StatelessWidget {
  final Color cor;

  const Block({Key? key, required this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      height: 120,
      width: 120,
    );
  }
}
