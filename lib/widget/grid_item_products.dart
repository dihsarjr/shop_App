import 'package:flutter/material.dart';
import 'package:shop_app/screens/detail_page.dart';

class GridProducts extends StatelessWidget {
  String id;
  String title;
  String image;
  GridProducts(this.id, this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => DetailsPage(
                      title: title,
                    )));
          },
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing:
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}
