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
        body: Column(),
      ),
    );
  }
}
