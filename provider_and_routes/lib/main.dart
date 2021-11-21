import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_routes/models/settings_data.dart';
import 'package:provider_and_routes/models/user.dart';
import 'package:provider_and_routes/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Building MyApp');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SettingsData(),
        ),
        ChangeNotifierProvider(
          create: (context) => User(),
        ),
      ],
      builder: (context, child) {
        return const MaterialApp(
          initialRoute: RouteManager.loginPage,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
