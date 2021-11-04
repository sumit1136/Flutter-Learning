import 'package:bottom_navigation/Defaults/defaults.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 0;

  final pages = [
    const Center(
      child: Text('Inbox'),
    ),
    const Center(
      child: Text('Starred'),
    ),
    const Center(
      child: Text('Sent'),
    ),
    const Center(
      child: Text('Draft'),
    ),
    const Center(
      child: Text('Trash'),
    ),
    const Center(
      child: Text('Spam'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation'),
      ),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blue[100],
        type: BottomNavigationBarType.shifting,
        elevation: 60,
        selectedItemColor: Defaults.bottomNavItemSelectedColor,
        unselectedItemColor: Defaults.bottomNavItemColor,
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(
              Defaults.bottomNavItemIcon[0],
            ),
            label: Defaults.bottomNavItemText[0],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(
              Defaults.bottomNavItemIcon[1],
            ),
            label: Defaults.bottomNavItemText[1],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepOrange,
            icon: Icon(
              Defaults.bottomNavItemIcon[2],
            ),
            label: Defaults.bottomNavItemText[2],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Defaults.bottomNavItemIcon[3],
            ),
            label: Defaults.bottomNavItemText[3],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Defaults.bottomNavItemIcon[4],
            ),
            label: Defaults.bottomNavItemText[4],
          ),
        ],
      ),
    );
  }
}
