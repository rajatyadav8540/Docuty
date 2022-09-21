import 'package:doc2/pages/home_page.dart';
import 'package:doc2/pages/register_page.dart';
import 'package:doc2/pages/start.dart';
import 'package:email_validator/email_validator.dart';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import '../widget/numorphic.dart';
import 'forget_passward.dart';

class Loginpage extends StatefulWidget {
 
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _passWis = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    email:
    _emailController.text.trim();
    password:
    _passwordController.text.trim();
  }
  // get floatingActionButtonLocation => null;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
          child: Column(children: [
        //image or Any text fo user guidence.
        Padding(
          padding:  const EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 1),
          child: SizedBox(
             height: 250,
            child: mum(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                 // height: 250,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
          // width: MediaQuery.of(context).size.width * 0.5,
        ),
        const Text(
          "Welcome Back",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),

        //email textfeild
        Padding(
          padding:
              const EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 1),
          child: TextFormField(
            controller: _emailController,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              hintText: "Enter email id",
              labelText: "Email id",
              // iconColor:Color.fromARGB(255, 96, 96, 197),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (email) =>
                email != null && !EmailValidator.validate(email)
                    ? "Enter a valid email"
                    : null,
          ),
        ),
        const SizedBox(height: 2),
        //passward textfeild
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
          child: TextFormField(
            controller: _passwordController,
            obscureText: _passWis,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passWis = !_passWis;
                  });
                },
                icon: _passWis
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              ),
              hintText: "Enter passward",
              labelText: "passward",
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => value != null && value.length < 6
                ? "Enter min. 6 characters"
                : null,
          ),
        ),
        //forget passward
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ForgotPasswordPage();
                  }));
                },
                child: const Text("Forget passward",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ),
            ],
          ),
        ),

        //sign in
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 25, 221, 48),
              minimumSize: const Size.fromHeight(45),
            ),
            icon: const Icon(
              Icons.lock_open,
              size: 32,
              color: Colors.white,
            ),
            label: const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return startpage();
                  }));
            },
          ),
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),

        //not a user ? Register
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Not a member? ", style: TextStyle(fontSize: 18)),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const RegisterPage();
                  }));
            },
            child: const Text("Register Here",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          ),
        ]),
        // text
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const Text("-----  Or  -----", style: TextStyle(fontSize: 18)),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
            },
            icon:
                Image.asset("assets/images/google.png", height: 33, width: 33),
            label: const Text("Sign in with Google"),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        )
      ])),
    );
  }
}