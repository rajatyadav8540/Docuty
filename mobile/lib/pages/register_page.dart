<<<<<<< HEAD
import 'package:doc2/pages/login_page.dart';
import 'package:doc2/pages/start.dart';
import 'package:doc2/pages/user_res.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'home_page.dart';
=======
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../res/components/round_button.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';
import '../view_model/auth_view_model.dart';
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
<<<<<<< HEAD
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
=======
  final ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);
  bool _passWis = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswardController =TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  FocusNode usernameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmpasswordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswardController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmpasswordFocusNode.dispose();
    usernameFocusNode.dispose();

    _obsecurePassword.dispose();
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    final authViewMode = Provider.of<AuthViewModel>(context);
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
<<<<<<< HEAD
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
=======
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
            // width: MediaQuery.of(context).size.width * 0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              const Text("For Docter,  ", style: TextStyle(fontSize: 18)),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, RoutesName.DocRegisterpage);
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                },
                child: const Text("Register Here",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
<<<<<<< HEAD
          ]),
           ),
=======
            ]),
          ),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
          // username textfeild
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 5),
            child: TextFormField(
              controller: _usernameController,
<<<<<<< HEAD
              decoration: const InputDecoration(
                hintText: "Enter username",
                labelText: "Username",
              ),
=======
              focusNode: usernameFocusNode,
              decoration: const InputDecoration(
                 prefixIcon: const Icon(Icons.person_outline_sharp),
                hintText: "Enter username",
                labelText: "Username",
              ),
              onFieldSubmitted: (valu) {
                Utils.fieldFocusChange(
                    context, usernameFocusNode, emailFocusNode);
              },
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
            ),
          ),
          // phone number

<<<<<<< HEAD
          Padding(
=======
         /* Padding(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
            padding:
                const EdgeInsets.only(left: 32, top: 4, right: 32, bottom: 5),
            child: TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
<<<<<<< HEAD
=======
                 prefixIcon: const Icon(Icons.phone_android_outlined),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                hintText: "Enter phone number",
                labelText: "Phone number",
              ),
            ),
<<<<<<< HEAD
          ),
=======
          ),*/
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
          //email textfeild

          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 5),
            child: TextFormField(
              controller: _emailController,
              cursorColor: Colors.black,
<<<<<<< HEAD
              decoration: const InputDecoration(
                hintText: "Enter email id",
                labelText: "Email id",
                // iconColor:Color.fromARGB(255, 96, 96, 197),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
=======
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration: const InputDecoration(
                  hintText: "Enter email id",
                  labelText: "Email id",
                  prefixIcon: Icon(Icons.alternate_email)
                  // iconColor:Color.fromARGB(255, 96, 96, 197),
                  ),
              onFieldSubmitted: (valu) {
                Utils.fieldFocusChange(
                    context, emailFocusNode, passwordFocusNode);
              },
               autovalidateMode: AutovalidateMode.onUserInteraction,
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
              validator: (email) =>
                  email != null && !EmailValidator.validate(email)
                      ? "Enter a valid email"
                      : null,
            ),
          ),

          //passward textfeild
<<<<<<< HEAD
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
=======
          ValueListenableBuilder(
              valueListenable: _obsecurePassword,
              builder: (context, value, child) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 32, right: 32, bottom: 5),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _obsecurePassword.value,
                    focusNode: passwordFocusNode,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_open_rounded),
                      suffixIcon: InkWell(
                          onTap: () {
                            _obsecurePassword.value = !_obsecurePassword.value;
                          },
                          child: Icon(_obsecurePassword.value
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      hintText: "Enter passward",
                      labelText: "passward",
                    ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value != null && value.length < 6
                        ? "Enter min. 6 characters"
                        : null,
                  ),
                );
              }),
          // confirm passward
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child:TextFormField(
                    controller: _confirmpasswardController,
                    obscureText: _obsecurePassword.value,
                    focusNode: confirmpasswordFocusNode,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                       prefixIcon: const Icon(Icons.lock_open_rounded),
                      suffixIcon: IconButton(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                  onPressed: () {
                    setState(() {
                      _passWis = !_passWis;
                    });
                  },
                  icon: _passWis
<<<<<<< HEAD
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
=======
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
                hintText: "Confirm Passward",
                labelText: "Confirm passward",
                    ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value != null && value.length < 6
                        ? "Enter min. 6 characters"
                        : null,
                  ),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
          ),
          //sign up
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
<<<<<<< HEAD
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
=======
            child: RoundButton(
              title: 'Sign Up',
              loading: authViewMode.signUpLoading,
              onPress: () {
                if (_usernameController.text.isEmpty) {
                  Utils.flushBarErrorMessage('Please enter username', context);
                } else if (_emailController.text.isEmpty) {
                  Utils.flushBarErrorMessage('Please enter email', context);
                } else if (_passwordController.text.isEmpty) {
                  Utils.flushBarErrorMessage('Please enter password', context);
                } else if (_passwordController.text.length < 6) {
                  Utils.flushBarErrorMessage(
                      'Please enter 6 digit password', context);
                } 
                 else {
                  Map data = {
                    'username': _usernameController.text.toString(),
                    'email': _emailController.text.toString(),
                    'password': _passwordController.text.toString(),
                    'password2': _confirmpasswardController.text.toString(),
                  };

                  authViewMode.signUpApi(data, context);
                  print('api hit');
                  
                }
              },
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
<<<<<<< HEAD
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Loginpage();
                  }));
=======
                Navigator.pushNamed(context, RoutesName.loginpage);
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
