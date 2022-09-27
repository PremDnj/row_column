import 'package:flutter/material.dart';
import './my_drawer.dart';
import './textfield_controller.dart';

class AwesomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AwesomeAppState();
  }
}

class _AwesomeAppState extends State<AwesomeApp> {
  final TextEditingController _usernameController = TextEditingController();

  String myText = 'Changed Me';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      title: 'Awesome App',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome App'),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: MyTextField(myText, _usernameController),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              myText = _usernameController.text;
            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
