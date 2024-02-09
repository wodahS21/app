import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Prueba AppBar"),
          actions: [],
        ),
        body: const Center(
          child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
     Text('yo y mis compañeros del gremio'),
     Text('Creando diversos hechisos'),
     Text('Basandonos en un grimorio que nos dio un sabio'),
  ],
)
        ),
      ),
    );
  }
}
