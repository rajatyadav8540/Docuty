import 'package:doc2/pages/DocRegister_page.dart';
import 'package:doc2/pages/register_page.dart';
import 'package:doc2/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import '../../pages/doc_intro.dart';

import '../../pages/login_page.dart';
import '../../pages/start.dart';
import '../../view/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
     /* case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());*/

      case RoutesName.startpage:
        return MaterialPageRoute(
            builder: (BuildContext context) =>const startpage());

      case RoutesName.loginpage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Loginpage());
      case RoutesName.registerpage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegisterPage());

      case RoutesName.Docintro:
        return MaterialPageRoute(builder: (BuildContext context) => const Docintro());

         case RoutesName.DocRegisterpage:
        return MaterialPageRoute(builder: (BuildContext context) => const DocRegisterPage());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
