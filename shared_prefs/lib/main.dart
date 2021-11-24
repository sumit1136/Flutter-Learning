import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefs/models/theme_settings.dart';
import 'package:shared_prefs/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeSettings(),
        )
      ],
      child: Consumer<ThemeSettings>(
        builder: (context, value, child) {
          return MaterialApp(
            theme: value.darkTheme ? darkTheme : lightTheme,
            home: const Settings(),
          );
        },
      ),
    );
  }
}
