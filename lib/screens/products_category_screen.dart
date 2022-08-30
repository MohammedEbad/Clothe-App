import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/products_overview_screen.dart';
import 'package:flutter_complete_guide/widgets/app_drawer.dart';

class ProductsCategoryScreen extends StatelessWidget {
  static const routeName = '/product-category';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductsOverviewScreen.routeName,
                // arguments: product.id, -> need to pass clothes category here
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black26,
                  title: Text(
                    'Men',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                child: FadeInImage(
                  placeholder:
                      AssetImage('assets/images/product-placeholder.png'),
                  image: NetworkImage(
                    'https://i.pinimg.com/474x/8d/18/61/8d186160aaace46a24742f84b01efa4c.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductsOverviewScreen.routeName,
                // arguments: product.id, -> need to pass clothes category here
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black26,
                  title: Text(
                    'Women',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                child: FadeInImage(
                  placeholder:
                      AssetImage('assets/images/product-placeholder.png'),
                  image: NetworkImage(
                    'https://rukminim1.flixcart.com/image/714/857/jqfinww0/dress/8/y/w/xxl-ragini-blue-reyans-original-imafcduaa5b5pghg.jpeg?q=50',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
