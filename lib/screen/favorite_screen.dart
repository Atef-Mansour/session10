import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../wideget/category_item_item.dart';
import '../provider/Item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    var meals=Provider.of<Itemss>(context).getFav;


    return Scaffold(
//      appBar: AppBar(
//        title: Text('Favorites Meals'),
//      ),
    body: ListView.builder(
      itemCount: meals.length,
//itemBuilder: (ctx,i) => Text(meals[i].title),
      itemBuilder: (ctx,i) => ChangeNotifierProvider.value(
          value: meals[i],
          child: CategoryItemItem()),
    ),
    );
  }
}
