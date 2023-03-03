import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:truth_or_dare/view/HomePage.dart';
import 'package:truth_or_dare/view/add_players_page.dart';
import 'package:truth_or_dare/view/truth_or_dare_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(


        theme: ThemeData(
          useMaterial3: true,


        ),
      home: HomePage()
    );
  }
}


