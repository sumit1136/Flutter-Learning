import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_routes/models/settings_data.dart';
import 'package:provider_and_routes/models/user.dart';
import 'package:provider_and_routes/routes/routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Building MainPage');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<SettingsData>().appBarColor,
        automaticallyImplyLeading: false,
        title: const Text('Main Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.settingsPage);
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<User>(
              builder: (context, value, child) {
                return Text(
                  'Welcome ${value.username}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
