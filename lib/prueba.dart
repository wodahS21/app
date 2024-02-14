import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  const Prueba({super.key});
  static final mens = GlobalKey<ScaffoldMessengerState>();
  final snackBar = const SnackBar(
    content: Text('Notificacion'),
    behavior: SnackBarBehavior.floating,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(248, 253, 216, 4),
        backgroundColor: const Color.fromRGBO(62, 61, 156, 61),
        title: const Text("Prueba AppBar"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app),
              color: Colors.lightBlueAccent.shade400),
          const SizedBox(width: 20),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_time),
              color: Colors.lightBlueAccent.shade400),
          const SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            mens.currentState!
              ..removeCurrentSnackBar()
              ..showSnackBar(snackBar);
          },
          child: const Text('GridView'),
        ),
      ),
    );
  }
}
