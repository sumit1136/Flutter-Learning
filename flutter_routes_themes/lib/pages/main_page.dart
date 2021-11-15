import 'package:flutter/material.dart';
import 'package:flutter_routes_themes/routes/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic result = 'Data to come back';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.secondPage);
              },
              child: const Text('Go to second page'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                var resultBack = await Navigator.of(context)
                    .pushNamed(RouteManager.thirdPage, arguments: {
                  'name': 'Sumit Kumar',
                });
                setState(() {
                  result = resultBack;
                });
              },
              child: const Text('Go to third page'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}
