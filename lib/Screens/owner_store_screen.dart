import 'package:ecommerce_app/models/bottomnavigationbar.dart';
import 'package:ecommerce_app/models/product_card.dart';
import 'package:flutter/material.dart';

class StoreOwner extends StatefulWidget {
  const StoreOwner({Key? key}) : super(key: key);

  @override
  _StoreOwnerState createState() => _StoreOwnerState();
}

class _StoreOwnerState extends State<StoreOwner> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          shadowColor: Colors.pink[900],
          foregroundColor: Colors.grey[350],
          title: Title(
            color: Colors.black,
            child: const Center(
              child: Text(
                'Start Creating Your Store',
              ),
            ),
          ),
          actions: [],
          elevation: 20,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: <Widget>[
            // ProductCard(),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  Image.asset('lib/assets/images/fruits&vegetables.jpg'),
                  ListTile(
                    //leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text(
                      'Fresh Fruits & Vegetables',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      '',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  Image.asset('lib/assets/images/HEALTHY-COOKING-OILS.jpg'),
                  ListTile(
                    //leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text(
                      'Cooking Oil & Ghee',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      '',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  Image.asset('lib/assets/images/meatfishegg.jpg'),
                  ListTile(
                    //leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text(
                      'Meat & Fish',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      '',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  Image.asset('lib/assets/images/bakery.jpg'),
                  ListTile(
                    //leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text(
                      'Bakery & Snacks',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      '',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  Image.asset('lib/assets/images/dairy.jpeg'),
                  ListTile(
                    //leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text(
                      'Dairy',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      '',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  Image.asset('lib/assets/images/beverages.jpg'),
                  ListTile(
                    //leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text(
                      'Beverages',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      '',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
