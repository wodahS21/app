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
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'prueba');
                // if (Platform.isAndroid) {
                //   SystemNavigator.pop();
                // } else {
                //   exit(0);
                // }
              },
              icon: const Icon(Icons.admin_panel_settings_rounded),
              color: Colors.lightBlueAccent.shade400),
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
            Image.network(
                "https://pbs.twimg.com/profile_images/1620439171046281221/uFCJyELZ_400x400.jpg"),
            Image.network("https://pbs.twimg.com/media/EAmp_r6XoAAERcX.jpg"),
            Image.network(
                "https://mexico.quadratin.com.mx/www/wp-content/uploads/2022/02/2222.jpg"),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkOeGNXPfqIskDCT4jx1CAtWzC8DjXnT6s0g&usqp=CAU"),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-I1fkGt2uTmXbxSonYEq-JCGk4EBrDMu5bw&usqp=CAU"),
            Image.network(
                "https://www.elfinanciero.com.mx/resizer/vx2-PrdOKxRN3dQKqVRIeQG9dK4=/400x267/filters:format(png):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/elfinanciero/42JGIRAGT5HCLGNSLODJOC436M.png"),
            Image.network(
                "https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2021/05/Piensa-Mark-Piensa-los-mejores-memes-del-meme-que-nos-dejo-el-final-de-Invincibl.jpg?resize=1280%2C1283&quality=80&ssl=1"),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWyeVnPzfzp_9wvBvbEY8WeHf4ujwJ4tbWBTCB5GSAQJh1h6-c60fxQs86L6E-S9irEd0&usqp=CAU"),
            Container(
              padding: const EdgeInsets.all(8),
              color: Color.fromARGB(255, 255, 0, 0),
              child: const Text(
                'Syntax.Error',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Deje su comentario',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
