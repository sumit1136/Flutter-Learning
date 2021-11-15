import 'package:flutter/material.dart';
import 'package:flutter_routes_themes/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.light(
          primary: Colors.purple,
        ),
        scaffoldBackgroundColor: Colors.red,
      ),
      // theme: ThemeData(
      //   primaryColor: Colors.purple,
      //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      //       .copyWith(secondary: Colors.green),
      //   scaffoldBackgroundColor: Colors.red[100],
      //   fontFamily: 'Times New Roman',
      // ),
      initialRoute: RouteManager.homepage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
