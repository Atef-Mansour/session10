import 'package:flutter/material.dart';
import '../screen/setting_screen.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Theme.of(context).primaryColor,
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text('Menu',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
        ]),
        ListTile(
          onTap: ()=>Navigator.pushReplacementNamed(context, '/'),
          title: Text(
            'Categories',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Divider(
          thickness: 1.5,
          height: 0,
        ),
        ListTile(
          onTap: ()=>Navigator.pushNamed(context, SettingScreen.routName),
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
