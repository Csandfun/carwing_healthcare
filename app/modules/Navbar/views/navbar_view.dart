import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Mr.Allex"),
            accountEmail: Text('@gmail.com'),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Handle navigation for item 1 here.
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Handle navigation for item 2 here.
            },
          ),
        ],
      ),
    );
  }
}
