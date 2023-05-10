import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/my_routes.dart';
import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
String name = "";
bool changeState = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/images/Login_Page.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter password", labelText: "Password"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          //ElevatedButton(
          //  style: TextButton.styleFrom(),
          //  child: const Text("Sign in"),
          //  onPressed: () {
          //    Navigator.pushNamed(context, MyRoutes.homeRoute);
          //  },
          //)
          InkWell(
            onTap:  () async {
              setState(() {
                changeState = true;
                //Navigator.pushNamed(context, MyRoutes.homeRoute);
              });
              await(Future.delayed(const Duration(seconds: 1 )));
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: 50,
              width: changeState ? 70: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: changeState? const Icon(Icons.done, color:  Colors.greenAccent)
               : Text("Sign in",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            ),
          )
        ]),
      ),
    );
  }
}
