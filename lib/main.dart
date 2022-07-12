import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_art/ui/main_screen.dart';
import 'controllers/controller_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialBinding: ControllersBinding(),
      home: const MainScreen(),
    );
  }
}
