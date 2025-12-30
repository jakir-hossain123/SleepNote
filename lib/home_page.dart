import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "My Practices",style:
        TextStyle(
            fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Text(_value.toString(),style:  TextStyle(
          fontSize: 40,
          color: Theme.of(context).primaryColor
        ),),
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                _value= _value-1;
              });
            },
            child: Icon(Icons.remove),
          ),
        FloatingActionButton(
          onPressed: (){
            setState(() {
              _value++;
            });
          },
          child: Icon(Icons.add),
        ),
      ],)

    );
  }
}
