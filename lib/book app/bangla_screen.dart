import 'package:flutter/material.dart';
class BanglaScreen extends StatefulWidget {
  const BanglaScreen({super.key});

  @override
  State<BanglaScreen> createState() => _BanglaScreenState();
}

class _BanglaScreenState extends State<BanglaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangla screen'),
      ),
    );
  }
}
