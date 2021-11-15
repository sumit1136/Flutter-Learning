import 'package:flutter/material.dart';
import 'package:flutter_routes_themes/pages/main_page.dart';
import 'package:flutter_routes_themes/pages/second_page.dart';
import 'package:flutter_routes_themes/pages/third_page.dart';

class RouteManager {
  static const String homepage = '/';
  static const String secondPage = '/secondPage';
  static const String thirdPage = '/thirdPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valPassed;

    if (settings.arguments != null) {
      valPassed = settings.arguments as Map<String, dynamic>;
    }

    switch (settings.name) {
      case homepage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );

      case secondPage:
        return MaterialPageRoute(
          builder: (context) => const SecondPage(),
        );

      case thirdPage:
        return MaterialPageRoute(
          builder: (context) => ThirdPage(
            name: valPassed['name'],
          ),
        );

      default:
        throw const FormatException('Route not fopund');
    }
  }
}
