import 'package:flutter/material.dart';
import 'package:shop_app/screens/detail_page.dart';

class GridProducts extends StatefulWidget {
  String id;
  String title;
  String image;
  bool favorite;
  GridProducts(this.id, this.title, this.image, this.favorite);

  @override
  _GridProductsState createState() => _GridProductsState();
}

class _GridProductsState extends State<GridProducts> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => DetailsPage(
                      id: widget.id,
                    )));
          },
          child: Image.network(
            widget.image,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: widget.favorite == false
              ? IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    setState(() {
                      widget.favorite = true;
                    });
                  })
              : IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    setState(() {
                      widget.favorite = false;
                    });
                  }),
          title: Text(
            widget.title,
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
