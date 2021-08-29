import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/Item.dart';
import '../wideget/item_card_row.dart';

class CategoryItemItem extends StatefulWidget {
  const CategoryItemItem({Key? key}) : super(key: key);

  @override
  _CategoryItemItemState createState() => _CategoryItemItemState();
}

class _CategoryItemItemState extends State<CategoryItemItem> {
//  bool _isFav = false;
  @override
  Widget build(BuildContext context) {
    var item = Provider.of<Item>(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                child: Image.network(item.imageUrl),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              Positioned(
                bottom: 50,
                right: 50,
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: Colors.black54,
                  ),
//                  height: 50,
//                  color: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      item.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemCardRow('${item.price} ', Icons.money),
//                MealCardRow(
//                    '${convertComplexity(meal.complexity)} ', Icons.work),
//                MealCardRow('${convertAffordability(meal.affordability)} ',
//                    Icons.attach_money),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (item.isFav) {
                        Provider.of<Itemss>(context, listen: false)
                            .removeFavItem(item.id);
                        item.isFav=false;
                      } else {
                        Provider.of<Itemss>(context, listen: false)
                            .addFavItem(item.id);
                        item.isFav=true;
                      }
//                      meal.isFav = !meal.isFav;
                    });
                  },
//                  icon: Icon(Icons.favorite_border),
                  icon: Icon(
                    item.isFav ? Icons.favorite : Icons.favorite_border,
                  ),
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



