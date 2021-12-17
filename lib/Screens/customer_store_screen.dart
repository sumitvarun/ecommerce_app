import 'package:flutter/material.dart';

class CustomerStore extends StatefulWidget {
  const CustomerStore({Key? key}) : super(key: key);

  @override
  _CustomerStoreState createState() => _CustomerStoreState();
}

class _CustomerStoreState extends State<CustomerStore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [],
          elevation: 15,
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
        body: Column(),
      ),
    );
  }
}
