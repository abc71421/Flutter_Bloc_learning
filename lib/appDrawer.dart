import 'package:flutter/material.dart';

import 'Utils/static_objects.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    'Drawer Header',
                    style: textTheme.headline4,
                  ),
                ),
                ListTile(
                  onTap: () {
                    simpleLogger.i("on message title tap!");
                    Navigator.pop(context);
                  },
                  leading: const Icon(Icons.message),
                  title: const Text('Messages'),
                ),
                const ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Column(
              children: <Widget>[
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ListTile(
                  title: const Text('Ver. 1.0.0'),
                  onLongPress: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('test')));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
