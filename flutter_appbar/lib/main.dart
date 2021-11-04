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
  String text = "None Clicked";
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        key: drawerKey,
        endDrawer: const Drawer(),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.car_repair,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home_repair_service,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.room_service,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = "Casting Clicked";
                });
              },
              icon: const Icon(Icons.cast),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = "Notification Clicked";
                });
              },
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = "Search Clicked";
                });
              },
              icon: const Icon(Icons.search),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  drawerKey.currentState!.openEndDrawer();
                });
              },
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ],
          backgroundColor: Colors.blueGrey[400],
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
          title: const Text('Flutter'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'Car Repair - $text',
              ),
            ),
            Center(
              child: Text(
                'Home Repair - $text',
              ),
            ),
            Center(
              child: Text(
                'Room Service - $text',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
