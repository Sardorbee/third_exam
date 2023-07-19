import 'package:flutter/material.dart';
import 'package:third_exam/ui/home/home_page.dart';

class RouteNames {
  static const String homePage = "/";
 
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      ///////////////////////////////////////////////////////////////
      //following code shows us how to sen parametrs to widget

      // case RouteNames.addContact:
      //   return MaterialPageRoute(builder: (context) {
      //     return AddContactScreen(
      //       listener: settings.arguments as VoidCallback,
      //     );
      //   });
      /////////////////////////////////////////////////////////////

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Route mavjud emas"),
            ),
          ),
        );
    }
  }
}
