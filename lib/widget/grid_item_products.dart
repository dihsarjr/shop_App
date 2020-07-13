import 'package:flutter/material.dart';

class GridProducts extends StatelessWidget {
  String id;
  String title;
  String image;
  GridProducts(this.id, this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        image,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        title: Text(title),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
