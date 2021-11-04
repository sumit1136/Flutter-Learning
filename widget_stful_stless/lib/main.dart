import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful and Stateless'),
        ),
        body: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to the app",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Buttons(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var maleCounter = 0;
  var femaleCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'No of Males: $maleCounter',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'No of Males: $femaleCounter',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        MyOwnButton(
          onTap: () {
            setState(() {
              maleCounter++;
            });
          },
          text: 'Male+',
        ),
        const SizedBox(
          height: 20,
        ),
        MyOwnButton(
          onTap: () {
            setState(() {
              femaleCounter++;
            });
          },
          text: 'Female+',
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class MyOwnButton extends StatelessWidget {
  const MyOwnButton({required this.onTap, required this.text});
  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      height: 50,
      minWidth: 200,
      color: Colors.blue,
      elevation: 10,
      child: Text(
        text,
        style: const TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.arrow_back),
            Text("Developed by Sumit"),
            Icon(Icons.arrow_forward),
          ],
        ),
      ],
    );
  }
}
