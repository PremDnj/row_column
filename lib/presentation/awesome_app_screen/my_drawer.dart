import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              currentAccountPictureSize: const Size.fromRadius(25.0),
              onDetailsPressed: () {
                print('Detail pressed');
              },
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/stark.jpeg'),
              ),
              accountName: const Text('Prem Danej'),
              accountEmail: const Text('danejprem005@gmail.com'),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Accounts'),
            subtitle: Text('Account information'),
            iconColor: Colors.indigo,
            trailing: Icon(Icons.edit),
            hoverColor: Colors.black,
          ),
          const ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            subtitle: Text('Privacy & Security'),
            iconColor: Colors.indigo,
            trailing: Icon(Icons.arrow_right),
            hoverColor: Colors.black,
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            subtitle: Text('Logout from device'),
            iconColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
