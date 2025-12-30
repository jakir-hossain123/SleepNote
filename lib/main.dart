import 'package:flutter/material.dart';
import 'package:sleep_note/box_play.dart';
import 'package:sleep_note/home_page.dart';

import 'book app/bottom_nav_bar_screen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.green)
      ),
      home: BottomNavBarScreen(),
    );
  }
}
