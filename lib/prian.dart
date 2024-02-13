import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class Primaria extends StatefulWidget {
  const Primaria({super.key});

  @override
  State<Primaria> createState() => _PrimariaState();
}

class _PrimariaState extends State<Primaria> {
  AudioPlayer player = AudioPlayer();

  bool playing = false;

  void initState() {
    super.initState();

    player.setReleaseMode(ReleaseMode.loop);
  }

  Duration dur = Duration.zero;

  Duration pos = Duration.zero;

  @override
  void dispose() {
    player.dispose();

    super.dispose();
  }

  Future<void> playm(String path) async {
    await player.play(AssetSource(path));
    playing = true;
  }

  Future<void> stopm(String path) async {
    await player.stop();
    playing = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 31, 219, 86),
      appBar: AppBar(
        foregroundColor: Color.fromARGB(248, 253, 216, 4),
        backgroundColor: const Color.fromRGBO(62, 61, 156, 61),
        title: const Text("Prueba AppBar"),
        actions: [
          IconButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else {
                  exit(0);
                }
              },
              icon: const Icon(Icons.exit_to_app),
              color: Colors.lightBlueAccent.shade400),
          const SizedBox(width: 20),
          Icon(
            Icons.sms,
            color: Colors.lightBlueAccent.shade400,
          ),
          const SizedBox(width: 20),
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
                const Text(
                  'Basandonos en un grimorio que nos dio un sabio',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 22),
                ),
                Image.asset('assets/mago.jpeg'),
                const SizedBox(height: 30),
                const Row(
                  children: <Widget>[
                    SizedBox(width: 40),
                    Expanded(
                      child: Text(
                        'Ya partela magazo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.amber,
                            fontSize: 22),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Segundo Texto',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.amber,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  '(El profe nos dio la documentacion de flutter)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.redAccent,
                  ),
                ),
                Row(children: [
                  const SizedBox(width: 160),
                  CircleAvatar(
                    radius: 35,
                    child: IconButton(
                        icon: Icon(
                          playing ? Icons.pause : Icons.play_arrow,
                        ),
                        iconSize: 50,
                        onPressed: () async {
                          if (playing == true) {
                            await stopm('ME.mp3');
                          } else if (playing == false) {
                            await playm('ME.mp3');
                            //await audioPlayer.play(UrlSource('https://www.youtube.com/watch?v=XiV7hwfLXGE'));
                          }
                        }),
                  ),
                ]),
                const SizedBox(height: 20),
                Row(children: [
                  const SizedBox(width: 140),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'secundaria');
                      // if (Platform.isAndroid) {
                      //   SystemNavigator.pop();
                      // } else {
                      //   exit(0);
                      // }
                    },
                    child: Text('GridView'),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String formatTime(Duration dur) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(dur.inHours);
    final minutes = twoDigits(dur.inMinutes);
    final seconds = twoDigits(dur.inSeconds);

    return [
      if (dur.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}
