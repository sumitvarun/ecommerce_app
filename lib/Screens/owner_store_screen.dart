import 'package:flutter/material.dart';

class StoreOwner extends StatefulWidget {
  const StoreOwner({Key? key}) : super(key: key);

  @override
  _StoreOwnerState createState() => _StoreOwnerState();
}

class _StoreOwnerState extends State<StoreOwner> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        currentIndex: _currentIndex,
        //backgroundColor: Colors.blueGrey[700],
        // type: BottomNavigationBarType.fixed,
        //  selectedItemColor: Colors.pinkAccent[400],
        //  unselectedItemColor: Colors.grey[300],
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
              backgroundColor: Colors.pink),
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
              backgroundColor: Colors.red),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: GridView.count(
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Create"),
        icon: const Icon(Icons.store),
        backgroundColor: const Color(0xfff17532),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
