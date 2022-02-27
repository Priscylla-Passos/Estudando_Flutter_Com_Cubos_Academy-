import 'package:flutter/material.dart';

class MyNavigatorBar extends StatelessWidget {
  const MyNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade300,
           items: const [
            BottomNavigationBarItem(
              label: "Home", 
                 icon: Icon(               
                  Icons.home,
                    size: 36,
                 ),
      ),
      
           BottomNavigationBarItem(
              label: "Configurações", 
                 icon: Icon(               
                  Icons.settings,
                    size: 36,
                 ),
      ),
       BottomNavigationBarItem(
              label: "login", 
                 icon: Icon(               
                  Icons.login,
                    size: 36,
                 ),
      ),
           ],

          
        ),   
      ),
    );
  }
}
