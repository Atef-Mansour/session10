import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import './screen/categories_screen.dart';
import './screen/category_item_screen.dart';
import './provider/Item.dart';
import './screen/tab_screen.dart';
import './screen/setting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
              value: Itemss()
          ),
          ChangeNotifierProvider.value(
              value: Itemss()
          ),
          ChangeNotifierProvider.value(
              value: Itemss()
          ),
        ],



      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 250, 220, 1),
        ),
//        home: CategoriesScreen(),
        routes: {
          '/':(ctx)=>TabScreen(),
          CategoryItemsScreen.routname :(ctx) =>CategoryItemsScreen(),
          SettingScreen.routName:(_)=>SettingScreen(),
        },
      ),
    );

//      ChangeNotifierProvider(
//    create: (ctx)=>Meals(),
//
//      child: MaterialApp(
//        theme: ThemeData(
//          primaryColor: Colors.pink,
//          accentColor: Colors.amber,
//          canvasColor: Color.fromRGBO(255, 250, 220, 1),
//        ),
//        home: CategoriesScreen(),
//        routes: {
//CategoryMealsScreen.routname :(ctx) =>CategoryMealsScreen()
//        },
//      ),
//    );
  }
}
