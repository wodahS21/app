import 'dart:io';
import 'package:app/clase.dart';
import 'package:app/prian.dart';
import 'package:app/prueba.dart';
import 'package:app/sec.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return MaterialApp(
      scaffoldMessengerKey: Prueba.mens,
      initialRoute: 'primaria',
      routes: {
        'secundaria': (_) => const sec(),
        'primaria': (_) => const Primaria(),
        'prueba': (_) => const Prueba(),
        'clase': (_) => const clase(
              title: '',
            ),
      },
      debugShowCheckedModeBanner: false,
      title: 'Material App',
    );
  }
}
