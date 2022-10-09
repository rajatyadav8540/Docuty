import 'package:doc2/pages/home_page.dart';
import "package:flutter/material.dart";

import '../res/components/round_button.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';
import '../view_model/auth_view_model.dart';
import '../widget/numorphic.dart';
import 'forget_passward.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

class _LoginpageState extends State<Loginpage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode usernameFocusNode = FocusNode();

  // get floatingActionButtonLocation => null;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();


    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    usernameFocusNode.dispose();

    _obsecurePassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      //final authViewMode = Provider.of<AuthViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
          child: Column(children: [
        //image or Any text fo user guidence.
        Padding(
          padding:
              const EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 1),
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

        //forget passward
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ForgotPasswordPage();
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
          child:  RoundButton(
              title: 'Login',
              //loading: authViewMode.loading,
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

                  //authViewMode.loginApi(data , context);
                  //print('api hit');
              
                }
              },
            ),/*ElevatedButton.icon(
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
          ),*/
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),

        //not a user ? Register
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Not a member? ", style: TextStyle(fontSize: 18)),
          GestureDetector(
            onTap: () {
             Navigator.pushNamed(context, RoutesName.registerpage);
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
                return const Home();
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
