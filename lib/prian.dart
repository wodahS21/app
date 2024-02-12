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
                    Expanded(
                      child: Text(
                        'Ya partela magazo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                    ),
                    Expanded(
                      child: Text('Test', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  '(El profe nos dio la documentacion de flutter)',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Slider(
                  min: 0,
                  max: dur.inSeconds.toDouble(),
                  value: pos.inSeconds.toDouble(),
                  onChanged: (value) async {},
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(formatTime(pos)),
                      Text(formatTime(dur - pos)),
                    ],
                  ),
                ),
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
                const SizedBox(height: 20),
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
