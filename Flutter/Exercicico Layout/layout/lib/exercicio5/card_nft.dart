import 'dart:ui';

import 'package:flutter/material.dart';

class CardNFT extends StatelessWidget {
  const CardNFT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color(0xFF14253d),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/cubo3d.jpg',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Equilibrium #3429",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nossa coleção Equilibrium promove calma e balanço",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue.shade200,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "0.041 ETH",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: Colors.blue.shade200,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "restam 3 dias",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 35,
                color: Colors.blueGrey.shade800,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(120),
                    child: Image.asset(
                      "assets/efeito.jpg",
                      scale: 8.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 5),
                    child: Text(
                      "Criado por",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue.shade200,
                      ),
                    ),
                  ),
                  const Text(
                    "Priscila Passos",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
