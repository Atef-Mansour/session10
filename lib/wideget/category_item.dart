import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screen/category_item_screen.dart';

class CategoryItem extends StatelessWidget {
  final id, label;
  final Color color;
  const CategoryItem(this.id, this.label, this.color, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, CategoryItemsScreen.routname,arguments: {
        'id' :id,
        'title' :label,
      }),
      child: Card(
        color: color,
        child: Center(
            child: Text(label,
                style:
                    //TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    GoogleFonts.acme(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)))),
      ),
    );
  }
}
