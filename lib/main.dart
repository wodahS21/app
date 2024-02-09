import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade600,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueGrey.shade900,
          title: const Text("Prueba AppBar"),
          actions: [Icon(Icons.join_right_outlined,color: Colors.deepPurpleAccent.shade400,)],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                
                  const  Text('yo y mis compañeros del gremio',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 22 )),
                  const Text('Creando diversos hechisos',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 22 )),
                  const Text('Basandonos en un grimorio que nos dio un sabio',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 22 )),
                  Image.asset('assets/mago.jpeg'),
               
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Enabled'),
          ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
