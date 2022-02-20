import 'package:flutter/material.dart';

class Stone extends StatefulWidget {
  const Stone({Key? key}) : super(key: key);

  @override
  _StoneState createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  String image = "assets/fragment.png";

  int fragmentos = 0, stone = 0, pieces = 0;

  void fragment() {
    setState(() {
      fragmentos++;

      if (fragmentos == 10) {
        pieces += 1;
        fragmentos = 0;
      }
      if (pieces == 10) {
        stone += 1;
        pieces = 0;
      }

      if (stone > 0) {
        image = "assets/Stone.png";
      } else if (pieces > 0) {
        image = "assets/piece.png";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: fragment,
        child: Container(
          padding: const EdgeInsets.only(top: 45),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://i.imgur.com/etWX9CB.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                child: Image.asset(image),
                height: 250,
              ),
              Center(
                child: Text(
                  "Stones: $stone",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Pieces: $pieces",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Fragmentos: $fragmentos",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
