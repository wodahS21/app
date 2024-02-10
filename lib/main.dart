import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final audioPlayer = AudioPlayer();
  bool playing = false;
  Duration dur = Duration.zero;
  Duration pos = Duration.zero;
  @override
  void dispose() {
    audioPlayer.dispose();

    super.dispose();
  }

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
          actions: [
            Icon(
              Icons.join_right_outlined,
              color: Colors.deepPurpleAccent.shade400,
            )
          ],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('yo y mis compañeros del gremio',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 22)),
                  const Text('Creando diversos hechisos',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 22)),
                  const Text('Basandonos en un grimorio que nos dio un sabio',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 22)),
                  Image.asset('assets/mago.jpeg'),
                  const SizedBox(height: 30),
                  
                  const SizedBox(height: 32),
                  const Text('Partela Magazo',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                   const SizedBox(height: 4),
                  const Text('(El profe nos dio la documentacion de flutter)',
                  style: TextStyle(
                    fontSize: 15, 
                  ),
                  ),
                  Slider(
                    min: 0,
                    max: dur.inSeconds.toDouble(),
                    value: pos.inSeconds.toDouble(),
                    onChanged: (value) async{},
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(formatTime(pos)),
                      Text(formatTime(dur-pos)),
                    ],
                    ),
                    ),
                    CircleAvatar(
                      radius: 35,
                      child: IconButton(
                        icon: Icon(
                          playing ? Icons.pause: Icons.play_arrow,
                        ),
                        iconSize: 50,
                        onPressed: () async {
  if (playing) {
    await audioPlayer.pause();
  } else {
 
    await audioPlayer.play(UrlSource('https://www.youtube.com/watch?v=XiV7hwfLXGE'));
  }
}
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  String formatTime(Duration dur) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(dur.inHours);
    final minutes = twoDigits(dur.inMinutes);
    final seconds = twoDigits(dur.inSeconds);

    return[
      if(dur.inHours>0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}
