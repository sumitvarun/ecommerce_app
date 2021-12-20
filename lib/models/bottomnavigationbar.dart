import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[700],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pinkAccent[400],
        unselectedItemColor: Colors.grey[300],
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              label: 'Orders',
              icon: Icon(Icons.shopping_basket_rounded),
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              label: 'Category',
              icon: Icon(Icons.add),
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              label: 'Marketing',
              icon: Icon(Icons.store_outlined),
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
