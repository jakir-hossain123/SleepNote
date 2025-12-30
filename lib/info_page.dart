import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final String name;
  final int age;
  const InfoPage({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Age: $age'),
          ],
        ),
      ),
    );
  }
}

