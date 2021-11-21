import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:provider_and_routes/models/user.dart';
import 'package:provider_and_routes/routes/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Building Login');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.text,
            controller: usernameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Please enter your name',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<User>().username = usernameController.text;
              Navigator.of(context).pushNamed(RouteManager.mainPage);
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
