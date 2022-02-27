import 'dart:ui';

import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            ' Menu Drawer',
            style: TextStyle(
              color: Colors.pink.shade100,
              fontSize: 24,
            ),
          ),
        ),
        endDrawer: Drawer(
          backgroundColor: Colors.pink.shade50,
          child: ListView(
            children: [
              ListTile(
                title: const Text("Flutter"),
                subtitle: const Text("Tudo são Widgets"),
                leading: const Icon(
                  Icons.flash_on,
                  color: Colors.blue,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Dart"),
                subtitle: const Text("É muito forte"),
                leading: const Icon(
                  Icons.mood,
                  color: Colors.red,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Cafessíneo"),
                subtitle: const Text("Quero Cafééé"),
                leading: const Icon(
                  Icons.coffee,
                  color: Colors.brown,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
