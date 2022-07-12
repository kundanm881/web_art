// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(children: [
            // AppBar
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios)),
              IconButton(onPressed: () {}, icon: Icon(Icons.mode_edit_rounded)),
            ]),

            //Title
            Text("Profile".toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge),

            // Profile Image,

            Container(
              margin: EdgeInsets.only(top: 20),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                      image: AssetImage("assets/images/nice.jpg"),
                      fit: BoxFit.cover),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.6),
                        blurRadius: 6,
                        offset: Offset(1, 1),
                        blurStyle: BlurStyle.normal)
                  ],
                  borderRadius: BorderRadius.circular(100)),
            ),
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: "Name: ",
                    style: TextStyle(color: Colors.black45, fontSize: 20),
                    children: const [
                  TextSpan(
                      text: "Kundan", style: TextStyle(color: Colors.black))
                ])),
            SizedBox(height: 8),
            RichText(
                text: TextSpan(
                    text: "Email: ",
                    style: TextStyle(color: Colors.black45, fontSize: 20),
                    children: const [
                  TextSpan(
                      text: "Kundan@Gmail.com",
                      style: TextStyle(color: Colors.black))
                ])),
            SizedBox(height: 8),
            RichText(
                text: TextSpan(
                    text: "Phone: ",
                    style: TextStyle(color: Colors.black45, fontSize: 20),
                    children: const [
                  TextSpan(
                      text: "+91 5642816789",
                      style: TextStyle(color: Colors.black))
                ])),

            //LogoutButton
            SizedBox(height: 40),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                      child: Text("Log Out"),
                      onPressed: () {},
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.black, width: 1))))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
