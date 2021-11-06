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
  final snackBar = SnackBar(
    content: const Text('Successfully saved'),
    duration: const Duration(seconds: 1),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {},
    ),
  );

  String delete = "No choice made";
  String location = "None selected yet";

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  String bottomSheetVal = 'Nothing selected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text("Save"),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Colors.green,
                            width: 2,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              delete = 'You slected YES';
                            });
                            Navigator.pop(context);
                          },
                          child: const Text("Yes"),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              delete = 'You slected No';
                            });
                            Navigator.pop(context);
                          },
                          child: const Text("No"),
                        ),
                      ],
                      title: const Text('Delete entry 12345?'),
                      content: const Text('Are you sure to delete the entry?'),
                    );
                  },
                );
              },
              child: const Text("Delete"),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(delete),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () async {
                final String loc = await showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Choose your location'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'India');
                          },
                          child: const Text('India'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'America');
                          },
                          child: const Text('America'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'England');
                          },
                          child: const Text('England'),
                        ),
                      ],
                    );
                  },
                );
                setState(() {
                  location = loc;
                });
              },
              child: const Text("Choose location"),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(location),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                scaffoldKey.currentState?.showBottomSheet((context) {
                  return Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'Are you sure to delete?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      bottomSheetVal = 'Yes';
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Yes',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      bottomSheetVal = 'No';
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'No',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  );
                });
              },
              child: const Text("Bottoim Sheet"),
            ),
            Text(bottomSheetVal),
          ],
        ),
      ),
    );
  }
}
