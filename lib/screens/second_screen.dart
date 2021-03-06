import 'package:flutter/material.dart';

import 'Home_screen.dart';


class SecondScreen extends StatefulWidget{
  const SecondScreen({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() => _secondscr();


}

class _secondscr extends  State<StatefulWidget>{
  final textcontsec = TextEditingController();
  double restipsec = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 139, 153, 159),
      appBar: AppBar(title: const Text("calculation"), elevation: 0, backgroundColor:  Color.fromARGB(255, 169, 8, 8)),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: textcontsec,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
              labelText: 'percent',
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
          child: 
          Center(
            child:
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 169, 8, 8))),
            onPressed: () {
              restipsec = double.parse(textcontsec.text);
              final route = MaterialPageRoute(builder: (context) =>  Homescreen(restipsec));
              Navigator.push(context, route);
            }, 
            child: const Text("calculate")
            ),
          ),
          )

      ]),
    );
  }
 


}
