import 'package:flutter/material.dart';

class CustomerStore extends StatefulWidget {
  const CustomerStore({Key? key}) : super(key: key);

  @override
  _CustomerStoreState createState() => _CustomerStoreState();
}

class _CustomerStoreState extends State<CustomerStore> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        shadowColor: Colors.pink[900],
        foregroundColor: Colors.grey[350],
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop()),
        title: Title(
          color: Colors.black,
          child: const Center(
            child: Text(
              'Explore Stores & Product Around You',
              textAlign: TextAlign.center,
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
        // backgroundColor: Colors.blueGrey[700],
        //  type: BottomNavigationBarType.fixed,
        // selectedItemColor: Colors.pinkAccent[400],
        // unselectedItemColor: Colors.grey[300],
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
              label: 'Orders',
              icon: Icon(Icons.shopping_basket_rounded),
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
            label: 'Category',
            icon: Icon(Icons.add),
            backgroundColor: Colors.purple,
          ),
          // BottomNavigationBarItem(
          //   label: 'Marketing',
          //   icon: Icon(Icons.store_outlined),
          // ),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
              backgroundColor: Colors.orange),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: SafeArea(
          child: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                Image.asset('lib/assets/images/fruits&vegetables.jpg'),
                ListTile(
                  //leading: const Icon(Icons.arrow_drop_down_circle),
                  title: const Text(
                    'Ravi,s Veggie Corner',
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Vegetables & Fruits',
                    textAlign: TextAlign.center,
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
                    'Patel Supermarket',
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Beverages, staples, Dairy',
                    textAlign: TextAlign.center,
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
                    'Meat & Fish Store',
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Meat Fish chicken',
                    textAlign: TextAlign.center,
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
                    ' The Bakery Store',
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Bakery & Snack',
                    textAlign: TextAlign.center,
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
                    'Mother Dairy',
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Milk Curd Ghee Yogurt Cheese Paneer ',
                    textAlign: TextAlign.center,
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
                    ' THE Beverages Store',
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    ' ',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
