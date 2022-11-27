import 'package:doc2/pages/home_page.dart';
<<<<<<< HEAD
import 'package:doc2/pages/register_page.dart';
import 'package:doc2/pages/start.dart';
import 'package:email_validator/email_validator.dart';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

=======
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import '../res/components/round_button.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';
import '../view_model/auth_view_model.dart';
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
import '../widget/numorphic.dart';
import 'forget_passward.dart';

class Loginpage extends StatefulWidget {
<<<<<<< HEAD
 
=======
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

<<<<<<< HEAD
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
=======
ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

class _LoginpageState extends State<Loginpage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode usernameFocusNode = FocusNode();

>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
  // get floatingActionButtonLocation => null;

  @override
  void dispose() {
<<<<<<< HEAD
    _emailController.dispose();
    _passwordController.dispose();

=======
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();


    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    usernameFocusNode.dispose();

    _obsecurePassword.dispose();

>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
      final authViewMode = Provider.of<AuthViewModel>(context);
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
          child: Column(children: [
        //image or Any text fo user guidence.
        Padding(
<<<<<<< HEAD
          padding:  const EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 1),
          child: SizedBox(
             height: 250,
=======
          padding:
              const EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 1),
          child: SizedBox(
            height: 250,
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
            child: mum(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
<<<<<<< HEAD
                 // height: 250,
=======
                  // height: 250,
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
<<<<<<< HEAD
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
=======
          child:  TextFormField(
              controller: _usernameController,
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
            ),/*TextFormField(
            controller: _emailController,
            cursorColor: Colors.black,
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
           /* autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (email) =>
                email != null && !EmailValidator.validate(email)
                    ? "Enter a valid email"
                    : null,*/
          ),*/
        ),
        const SizedBox(height: 2),
        //passward textfeild
        ValueListenableBuilder(
            valueListenable: _obsecurePassword,
            builder: (context, value, child) {
              return Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
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
                            ? Icons.visibility_off_outlined
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

>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
        //forget passward
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
<<<<<<< HEAD
                    return ForgotPasswordPage();
=======
                    return const ForgotPasswordPage();
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
<<<<<<< HEAD
          child: ElevatedButton.icon(
=======
          child:  RoundButton(
              title: 'Login',
              loading: authViewMode.loading,
              onPress: (){
                if(_usernameController.text.isEmpty){

                  Utils.flushBarErrorMessage('Please enter username', context);
                }else if(_passwordController.text.isEmpty){
                  Utils.flushBarErrorMessage('Please enter password', context);

                }else if(_passwordController.text.length < 6){
                  Utils.flushBarErrorMessage('Please enter 6 digit password', context);

                }else {


                  Map data = {
                    'username' : _usernameController.text.toString(),
                    'password' : _passwordController.text.toString(),
                  };

                  // Map data = {
                  //   'email' : 'eve.holt@reqres.in',
                  //   'password' : 'cityslicka',
                  // };

                  authViewMode.loginApi(data , context);
                  //print('api hit');
              
                }
              },
            ),/*ElevatedButton.icon(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 25, 221, 48),
              minimumSize: const Size.fromHeight(45),
            ),
<<<<<<< HEAD
=======
            
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
<<<<<<< HEAD
                    return startpage();
                  }));
            },
          ),
=======
                return startpage();
              }));
            },
          ),*/
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),

        //not a user ? Register
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Not a member? ", style: TextStyle(fontSize: 18)),
          GestureDetector(
            onTap: () {
<<<<<<< HEAD
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const RegisterPage();
                  }));
=======
             Navigator.pushNamed(context, RoutesName.registerpage);
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
<<<<<<< HEAD
                    return Home();
                  }));
=======
                return const Home();
              }));
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
