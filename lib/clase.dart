import 'package:flutter/material.dart';

class clase extends StatefulWidget {
  const clase({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<clase> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<clase> {
  @override
  bool mostrarPrimerMensaje = true;

  void alternarMensajes() {
    setState(() {
      mostrarPrimerMensaje = !mostrarPrimerMensaje;
    });
  }

  Widget build(BuildContext context) {
    String textoAMostrar = mostrarPrimerMensaje ? 'Hola' : 'Guapo';
    String textoButton = mostrarPrimerMensaje ? 'Bienvenido' : 'Adios';
    String textoTitulo =
        mostrarPrimerMensaje ? 'Shingeki no kyojin' : 'Mamahuevo';
    String urlimg = mostrarPrimerMensaje
        ? "https://static.theclinic.cl/media/2022/04/03-164925_l9vs_memes-reacciones-Shingeki-No-Kyojin-880x500.jpg"
        : "https://m.media-amazon.com/images/I/51iJWSjeYDL._AC_UF894,1000_QL80_.jpg";
    Color colorBoton =
        mostrarPrimerMensaje ? Colors.blue : Color.fromARGB(255, 2, 199, 28);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("mensajes"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.network(
            //     "https://static.theclinic.cl/media/2022/04/03-164925_l9vs_memes-reacciones-Shingeki-No-Kyojin-880x500.jpg"),
            Image.network(urlimg),
            texto(textoTitulo, Colors.black, 40),
            const Textoo(
                contenido: 'lorem', color: Colors.black26, tamanio: 12),
            Text(
              textoAMostrar,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                alternarMensajes();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colorBoton,
              ),
              child: Text(textoButton),
            ),
          ],
        ),
      ),
    );
  }

  // Funcion que retorna un texto, apta para cuando solo se use en una sola ventana
  Text texto(String contenido, Color color, double tamano) {
    return Text(
      contenido,
      textDirection: TextDirection.ltr,
      style: TextStyle(color: color, fontSize: tamano),
    );
  }
}

class Textoo extends StatelessWidget {
  final String contenido;
  final Color color;
  final double tamanio;

  const Textoo(
      {super.key,
      required this.contenido,
      required this.color,
      required this.tamanio});
  // key -> Para manejar estados, a traves de su llave desde cualquier otra ventana
  @override
  Widget build(BuildContext context) {
    return Text(
      contenido,
      textDirection: TextDirection.ltr,
      style: TextStyle(color: color, fontSize: tamanio),
    );
  }
}
