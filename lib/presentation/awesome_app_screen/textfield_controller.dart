import 'package:flutter/material.dart';

import './bgimage.dart';

class MyTextField extends StatelessWidget {
  final String myText;
  final TextEditingController _usernameController;

  MyTextField(this.myText, this._usernameController);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.00,
      child: Column(
        children: [
          BgImage(),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            myText,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _usernameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  label: Text('Username'),
                  icon: Icon(Icons.person),
                  hintText: 'Enter Name',
                  border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  label: Text('Password'),
                  icon: Icon(Icons.lock),
                  hintText: 'Enter Password',
                  border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
