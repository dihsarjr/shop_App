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
