import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefs/models/theme_settings.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const Card(
            child: ListTile(
              title: Text('Theme'),
            ),
          ),
          Consumer<ThemeSettings>(
            builder: (context, value, child) {
              return SwitchListTile(
                value: value.darkTheme,
                title: const Text('Dark theme'),
                onChanged: (newValue) {
                  value.toggleTheme();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
