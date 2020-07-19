import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/provider_data.dart';
import 'package:shop_app/widget/grid_item_products.dart';

class ProductsOverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsData>(context);
    final productsData = products.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (int selectedValue) {
                if (selectedValue == 0) {
                  print('0000');
                } else if (selectedValue == 1) {
                  print('11111');
                } else if (selectedValue == 2) {
                  print('2222');
                }
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Favorite Items'),
                        ],
                      ),
                      value: 0,
                    ),
                    PopupMenuItem(
                      child: Text('Wish List'),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text('New Items'),
                      value: 2,
                    )
                  ])
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridProducts(productsData[index].id, productsData[index].title,
              productsData[index].imageUrl, productsData[index].favorite);
        },
        itemCount: productsData.length,
      ),
    );
  }
}
