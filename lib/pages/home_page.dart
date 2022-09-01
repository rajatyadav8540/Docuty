
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("sign in with: "/* + user.email!*/),
          MaterialButton(
            onPressed: () {
              
            },
            color: const Color.fromARGB(255, 25, 221, 48),
            child: const Text("Sign out"),
          )
        ]),
      ),
    );
  }
}
