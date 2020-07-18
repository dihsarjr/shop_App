import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/provider_data.dart';
import 'package:shop_app/screens/products_over_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => ProductsData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrangeAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductsOverView(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop '),
      ),
    );
  }
}
