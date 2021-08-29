import 'package:flutter/material.dart';
class SettingScreen extends StatelessWidget {
  static const routName ='/setting_screen';
  const SettingScreen({Key? key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
    );
  }
}
