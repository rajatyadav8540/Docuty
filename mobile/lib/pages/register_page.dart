import 'package:doc2/pages/login_page.dart';
import 'package:doc2/pages/start.dart';
import 'package:doc2/pages/user_res.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controllers
  //final formkey =GlobalKey<FormState>();
  bool _passWis = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswardController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswardController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (passwardconfirmed()) {
      // await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email:
      _emailController.text.trim();
      password:
      _passwordController.text.trim();
      //  );
    }
  }

  bool passwardconfirmed() {
    if (_passwordController.text.trim() ==
        _confirmpasswardController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          //image or Any text fo user guidence.
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              "assets/images/health-report.png",
              // fit: BoxFit.cover,
              height: 50,
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
            // width: MediaQuery.of(context).size.width * 0.5,
          ),
          const Text(
            "Your Welcome",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          // text 2
          const Text(
            "Register below with your details!",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.w400,
            ),
          ),
          //
            SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
            // width: MediaQuery.of(context).size.width * 0.5,
          ),
           Padding(
             padding: const EdgeInsets.only(right:32),
             child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              const Text("For Docter,  ", style: TextStyle(fontSize: 18)),
              GestureDetector(
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DocRegister();
                    }));
                },
                child: const Text("Register Here",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
          ]),
           ),
          // username textfeild
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 5),
            child: TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                hintText: "Enter username",
                labelText: "Username",
              ),
            ),
          ),
          // phone number

          Padding(
            padding:
                const EdgeInsets.only(left: 32, top: 4, right: 32, bottom: 5),
            child: TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
                hintText: "Enter phone number",
                labelText: "Phone number",
              ),
            ),
          ),
          //email textfeild

          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 5),
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

          //passward textfeild
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 5),
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
          // confirm passward
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: TextFormField(
              controller: _confirmpasswardController,
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
                hintText: "Confirm Passward",
                labelText: "Confirm passward",
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => value != null && value.length < 6
                  ? "Enter min. 6 characters"
                  : null,
            ),
          ),
          //sign up
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
                "Sign Up",
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
              }, //signUp,
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          //not a user ? Register
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("You have an account, ", style: TextStyle(fontSize: 18)),
            GestureDetector(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Loginpage();
                  }));
              },
              child: const Text("Login Here",
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
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: FloatingActionButton.extended(
              onPressed: () {},
              icon: Image.asset("assets/images/google.png",
                  height: 33, width: 33),
              label: const Text("Sign in with Google"),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
          )
        ]),
      ),
    );
  }
}
