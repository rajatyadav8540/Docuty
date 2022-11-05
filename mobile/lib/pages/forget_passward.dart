import 'package:email_validator/email_validator.dart';
import "package:flutter/material.dart";

class ForgotPasswordPage extends StatefulWidget {
<<<<<<< HEAD
  ForgotPasswordPage({Key? key}) : super(key: key);
=======
  const ForgotPasswordPage({Key? key}) : super(key: key);
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 25, 221, 48),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
<<<<<<< HEAD
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, bottom: 5),
=======
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 32, bottom: 5),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
              child: Text(
                  "Enter your Email and We will send you a passward reset link"),
            ),
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
            MaterialButton(
              onPressed: (() {}), //passwordReset,
              color: const Color.fromARGB(255, 25, 221, 48),
              child: const Text("Reset Passward"),
            )
          ],
        ));
  }
}
