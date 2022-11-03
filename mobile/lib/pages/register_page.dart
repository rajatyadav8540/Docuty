import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../res/components/round_button.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';
import '../view_model/auth_view_model.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
  }

  @override
  Widget build(BuildContext context) {
    final authViewMode = Provider.of<AuthViewModel>(context);
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
            padding: const EdgeInsets.only(right: 32),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              const Text("For Docter,  ", style: TextStyle(fontSize: 18)),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, RoutesName.DocRegisterpage);
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
            ),
          ),
          // phone number

         /* Padding(
            padding:
                const EdgeInsets.only(left: 32, top: 4, right: 32, bottom: 5),
            child: TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
                 prefixIcon: const Icon(Icons.phone_android_outlined),
                hintText: "Enter phone number",
                labelText: "Phone number",
              ),
            ),
          ),*/
          //email textfeild

          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, top: 4, bottom: 5),
            child: TextFormField(
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
               autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (email) =>
                  email != null && !EmailValidator.validate(email)
                      ? "Enter a valid email"
                      : null,
            ),
          ),

          //passward textfeild
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
                  onPressed: () {
                    setState(() {
                      _passWis = !_passWis;
                    });
                  },
                  icon: _passWis
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
          ),
          //sign up
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
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
                Navigator.pushNamed(context, RoutesName.loginpage);
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
