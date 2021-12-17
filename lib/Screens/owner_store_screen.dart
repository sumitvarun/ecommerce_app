import 'package:flutter/material.dart';

class StoreOwner extends StatelessWidget {
  const StoreOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.pinkAccent[400],
      ),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
