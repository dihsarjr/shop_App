import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/provider_data.dart';

class DetailsPage extends StatelessWidget {
  String id;
  DetailsPage({this.id});
  @override
  Widget build(BuildContext context) {
//    final productId = ModalRoute.of(context).settings.arguments as String;
    //findById() also work well
    final prod = Provider.of<ProductsData>(context)
        .items
        .firstWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text(prod.title),
      ),
      body: Container(),
    );
  }
}
