import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final days = 28;
  final name = "Maisam";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bhai ki app"),
      ),
      drawer: Drawer(),
        body: Center(
          child: Container(
            child: Text("Welcome to the $days day app by $name"),
        ),
      ),
    );
    
  }
}
