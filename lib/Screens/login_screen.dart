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
        theme: ThemeData(fontFamily: 'MavenPro'),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Welcome Again',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 25,
                ),
              ),
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xff0097A7),
              foregroundColor: Colors.white,
              bottom: const TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(text: 'Customer', icon: Icon(Icons.person)),
                  Tab(text: 'Store', icon: Icon(Icons.storefront_outlined)),
                  //Tab(text: 'SUMITVARUN', icon: Icon(Icons.search)),
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
