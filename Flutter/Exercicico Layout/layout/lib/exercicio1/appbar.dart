import 'package:flutter/material.dart';

class MeuAppBar extends StatelessWidget {
  const MeuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade200,
          title: Text(
            'Coffee',
            style: TextStyle(
              color: Colors.brown,
               fontSize:  28,
               ),
               ),
               leading: Icon(Icons.coffee, size: 36, color: Colors.brown,),
        ),
      ),
    );
  }
}
