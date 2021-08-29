import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/Item.dart';
import '../wideget/category_item_item.dart';

class CategoryItemsScreen extends StatelessWidget {
  static const routname='/category_Items_screen';
  const CategoryItemsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    var Items =Provider.of<Itemss>(context).getItems.where((element) => element.categories.contains(args['id'])).toList();
    print(Items);
    return Scaffold(
      appBar: AppBar(
        title: Text(args['title']!),
      ),
      body: ListView.builder(
        itemCount: Items.length,
//itemBuilder: (ctx,i) => Text(Items[i].title),
          itemBuilder: (ctx,i) => ChangeNotifierProvider.value(
              value: Items[i],
              child: CategoryItemItem()),
      ),
    );
  }
}
