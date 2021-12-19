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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey[700],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.pinkAccent[400],
          unselectedItemColor: Colors.grey[300],
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Orders',
              icon: Icon(Icons.shopping_basket_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Category',
              icon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
              label: 'Marketing',
              icon: Icon(Icons.store_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
