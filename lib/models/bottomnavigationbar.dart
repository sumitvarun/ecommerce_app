import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
        // BottomNavigationBarItem(
        //   label: 'Category',
        // icon: Icon(Icons.add),
        // ),
        BottomNavigationBarItem(
          label: 'Marketing',
          icon: Icon(Icons.store_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
