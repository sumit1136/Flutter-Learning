import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'Nothing Clicked';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            text = "FAB clicked";
          });
        },
        icon: const Icon(Icons.save),
        elevation: 10,
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        label: const Text("Save"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white,
                elevation: 10,
              ),
              onPressed: () {
                setState(() {
                  text = "Elevated button clicked";
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.add),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Add"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  text = "Text button clicked";
                });
              },
              child: const Text("Ok"),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      text = 'TextButton in ButtonBar clicked';
                    });
                  },
                  child: const Text('No'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      text = 'ElevatedButton in ButtonBar clicked';
                    });
                  },
                  child: const Text("Yes"),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.deepOrange,
              child: const Text(
                "Enter",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  text = 'Material button clicked';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
