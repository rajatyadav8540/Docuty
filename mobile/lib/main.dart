
<<<<<<< HEAD

import 'package:doc2/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() async {
=======
import 'package:doc2/utils/routes/routes.dart';
import 'package:doc2/utils/routes/routes_name.dart';
import 'package:doc2/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import 'view_model/user_view_model.dart';

void main() {
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

<<<<<<< HEAD
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
=======
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthViewModel()),
          ChangeNotifierProvider(create: (_) => UserViewModel())
        ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
        primarySwatch:Colors.blueGrey,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home:const Loginpage(),
    );
  }
}
=======
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}

>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
