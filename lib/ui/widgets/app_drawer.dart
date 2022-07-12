// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_art/ui/profile_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(child: Text("G")),
            accountName: Text(
              "Game",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail:
                Text("Game@gmail.com", style: TextStyle(color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Column(
              children: [
                // Profile
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Profile"),
                  onTap: () {
                    Get.back();
                    Get.to(() => ProfilePage());
                  },
                ),
                //wallet
                ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text("Wallet"),
                  onTap: () {
                    Get.back();
                  },
                ),
                // Settings
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
