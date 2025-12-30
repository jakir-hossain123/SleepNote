import 'package:flutter/material.dart';
import 'package:sleep_note/info_page.dart';

class BoxPlay extends StatefulWidget {

  const BoxPlay({super.key});

  @override
  State<BoxPlay> createState() => _BoxPlayState();
}

class _BoxPlayState extends State<BoxPlay> {
  TextEditingController nameCont =TextEditingController();
  TextEditingController ageCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Play"),
      ),
      body:
      Stack(
        children: [
          Positioned(
            top: 15,
              right: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                ),
                  onPressed: () {
                 if (nameCont.text.trim().isEmpty || ageCont.text.trim().isEmpty){
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('Please entre your Name and Age first !',
                     textAlign: TextAlign.center,),
                       behavior: SnackBarBehavior.floating,
                       margin: EdgeInsets.only(
                         bottom: MediaQuery.of(context).size.height / 3.8,
                         left: 20,
                         right: 20,
                       ),
                       duration: Duration(seconds: 2),
                       backgroundColor: Colors.redAccent,
                     )
                   );
                 }
                 else
                   {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context)=> InfoPage(name: nameCont.text, age: int.parse(ageCont.text))
                         )
                     );
                   }
                  },
                  child: Text('Info Page')
              )
          ),
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextField(
                controller: nameCont,
                decoration: InputDecoration(
                  labelText: 'Input Name',
                  border: OutlineInputBorder()
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextField(
                keyboardType:TextInputType.number,
                controller: ageCont,
                decoration: InputDecoration(
                    labelText: 'Input Age',
                    border: OutlineInputBorder()
                ),
              ),
            )
          ],
        ),
      ]
      )
      ,
    );
  }
}
