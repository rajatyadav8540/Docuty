/*import 'dart:convert';


import 'package:http/http.dart' as http;

class CallApi {
  final String _url = "http://127.0.0.1:8000/";
  postData(data, apiUrl) async {

   try{ var fullUrl = _url + apiUrl;
    return await http.post(
      Uri.parse(fullUrl),
      body:jsonEncode(data),
      headers: _setHeaders(),

    );
    if(respon)
    }catch(e){
      print(e.toString());
    }
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };

}
*/




  /*_register() {
    var data = {
      "username": usernameController.text,
      "email": emailController.text,
      "password": passwordController.text,
    };
    var response = CallApi().postData(data,"register");
  }

  @override
  void initState() {
    /* _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswardController.dispose();*/
    super.initState();
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
  }*/