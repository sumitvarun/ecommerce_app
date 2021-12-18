import 'dart:math';

import 'package:ecommerce_app/models/login_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('MyStore'),
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xff5808e5),
              bottom: const TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(text: 'Customer', icon: Icon(Icons.favorite)),
                  Tab(text: 'Store', icon: Icon(Icons.music_note)),
                  //Tab(text: 'BIRDS', icon: Icon(Icons.search)),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: loginContainer(
                      phoneController: _phoneController,
                      passController: _passController),
                ),
                Center(
                  child: loginContainer(
                      phoneController: _phoneController,
                      passController: _passController),
                ),
                // Center(child: Text('BIRDS')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
