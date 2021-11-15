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
  String data = 'John Rambo';

  void changeValue(String dataChanged) {
    setState(() {
      data = dataChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Screen2(
        data: data,
        changeData: changeValue,
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key, required this.data, required this.changeData})
      : super(key: key);
  final String data;
  final Function(String) changeData;

  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Container(
      child: Screen3(
        data: data,
        changeData: changeData,
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key, required this.data, required this.changeData})
      : super(key: key);
  final String data;
  final Function(String) changeData;

  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      child: Screen4(
        data: data,
        changeData: changeData,
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key, required this.data, required this.changeData})
      : super(key: key);
  final String data;
  final Function(String) changeData;

  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          ElevatedButton(
            onPressed: () {
              changeData('Sumit Kumar');
            },
            child: const Text('Change data'),
          ),
        ],
      ),
    );
  }
}
