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
                //上方個人檔案區塊
                UserAccountsDrawerHeader(
                  //當前登入使用者的Email
                  accountEmail: const Text('test@gg.com'),

                  //當前登入使用者的名字
                  accountName: const Text('test'),

                  //左邊當前使用者的頭像
                  currentAccountPicture: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                       const NetworkImage("https://i.imgur.com/l8ouY8p.jpg"),
                    child: Material(
                      shape: const CircleBorder(
                        side: BorderSide.none,
                      ),
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => {},
                        onLongPress: () => simpleLogger.i("image long press!"),
                      ),
                    ),
                  ),

                  //右方其他使用者區(由左至右排列)
                  otherAccountsPictures: <Widget>[
                    //第二使用者
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                      const NetworkImage("https://media.tenor.com/images/f084d311a50d0b7ebe50d12b19b7bdd4/tenor.gif"),
                      child: Material(
                        shape: const CircleBorder(
                          side: BorderSide.none,
                        ),
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => {},
                          onLongPress: () => simpleLogger.i("image long press!"),
                        ),
                      ),
                    ),
                    //第三使用者
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                      const NetworkImage("https://i.imgur.com/l8ouY8p.jpg"),
                      child: Material(
                        shape: const CircleBorder(
                          side: BorderSide.none,
                        ),
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => {},
                          onLongPress: () => simpleLogger.i("image long press!"),
                        ),
                      ),
                    ),
                  ],

                  //背景色(主題色)
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                ),

                //中間選單區
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
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
                  leading: Icon(Icons.access_time),
                  title: Text('Timer'),
                ),
              ],
            ),
          ),

          //底部設定區
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
