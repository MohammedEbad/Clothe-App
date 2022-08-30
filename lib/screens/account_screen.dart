import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/app_drawer.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = '/account';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('This is your account'),
      ),
    );
  }
}
