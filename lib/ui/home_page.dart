// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:web_art/res/app_colors.dart';
import 'widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.black26));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonTextColor,
        title: Text("Games"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 9 / 10,
            ),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Flexible(
                          child: Image(
                              image: AssetImage("assets/images/nice.jpg"))),
                      SizedBox(height: 8),
                      Text(
                        "Game Name",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("You Click Game $index")));
                  },
                ),
              );
            }),
      ),
    );
  }
}
