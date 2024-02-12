import 'package:flutter/material.dart';

class sec extends StatelessWidget {
  const sec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade600,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey.shade900,
        title: const Text("Prueba AppBar"),
        actions: [
          Icon(
            Icons.admin_panel_settings_rounded,
            color: Colors.deepPurpleAccent.shade400,
          )
        ],
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("He'd have you all unravel at the"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Heed not the rabble'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Sound of screams but the'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('Who scream'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Color.fromARGB(255, 255, 0, 0),
              child: const Text('Syntax.Error'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Say Hello Bitch',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
