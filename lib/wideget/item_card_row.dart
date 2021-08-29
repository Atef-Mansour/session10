import 'package:flutter/material.dart';

class ItemCardRow extends StatelessWidget {
  final IconData icon;
  final dynamic label;

  const ItemCardRow(this.label,this.icon,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 5,),
        Text('Price :'),
        Text('$label'),
      ],
    );
  }
}
