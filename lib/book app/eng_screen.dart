import 'package:flutter/material.dart';

class EngScreen extends StatefulWidget {
  const EngScreen({super.key});

  @override
  State<EngScreen> createState() => _EngScreenState();
}

class _EngScreenState extends State<EngScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English screen'),
      ),
    );
  }
}
