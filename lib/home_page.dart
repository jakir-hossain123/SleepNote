import 'package:flutter/material.dart';
import 'package:sleep_note/box_play.dart';

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

      body: Stack(
        children:[ Center(
          child: Text(_value.toString(),style:  TextStyle(
            fontSize: 40,
            color: Theme.of(context).primaryColor
          ),),
        ),
          Positioned(
            top: 15,
              right: 30,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,

                ),
                  onPressed: (){
                  Navigator.push(
                      context,
                    MaterialPageRoute(
                        builder: (context) => BoxPlay()
                    ),
                  );
                  },
                  child: Text('Next Page')
              )
          )
        ]
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: (){
              setState(() {
                _value= _value-1;
              });
            },
            child: Icon(Icons.remove),
          ),
        FloatingActionButton(
          heroTag: "btn2",
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
