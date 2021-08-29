import 'package:flutter/material.dart';
import '../model/category.dart';
import '../wideget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.blue,
//      appBar: AppBar(
//        title: Text('Categories'),
//      ),
      body: GridView.builder(
          gridDelegate:
      //    SliverGridDelegateWithFixedCrossAxisCount(
          SliverGridDelegateWithMaxCrossAxisExtent(
        //  crossAxisCount: 3,
          maxCrossAxisExtent: 200,
        //  mainAxisExtent: 250,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 3/2),

          itemBuilder: (ctx,index){
return CategoryItem(DUMMY_CATEGORIES[index].id, DUMMY_CATEGORIES[index].title, DUMMY_CATEGORIES[index].color);
          },
      itemCount:DUMMY_CATEGORIES.length ,)

    );
  }
}
