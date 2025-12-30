import 'package:flutter/material.dart';

import 'bangla_screen.dart';
import 'eng_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> pages = [BanglaScreen(),EngScreen()];

  int _index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _index=index;
          });
        },
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.book),label: 'bangla'),
            BottomNavigationBarItem(icon: Icon(Icons.book_online),label:'english'),
          ]
      ),
      body: pages[_index],

    );
  }
}
