import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(child: Text("login page", 
      style: TextStyle(
        color: Colors.red,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),)),
    
    );
  }
}
