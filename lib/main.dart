import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({superkey});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Nadya Rahmania Putri';
  final String location = "Semarang, Jawa Tengah";
  final String description =
      '''Hi! Perkenalkan saya Nadya Rahmania Putri, panggil aja Nadya. 
      Saya lahir di Baturaja, Sumatera Selatan dan sekarang ini saya berusia 19 tahun. 
      Hobi saya ada banyak salah satunya membuat animasi pendek. 
      Saya rasa cukup sekian dari saya, jika ingin kenal lebih lanjut silahkan hubungi cp ini 087711438193.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profilku'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/me.jpeg',
            height: 270,
            width: 200,
          ),
          Container(
            height: 15,
          ),
          Column(children: [
            Container(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  this.location,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Container(
              width: 100,
            ),
          ]),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
