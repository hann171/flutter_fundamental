import 'package:flutter/material.dart';

void main() {
  //fungsi main, fungsi yang pertama kali dijalankan saat aplikasi dibuka
  runApp(MyApp()); //fungsi main jalanin class MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Row dan Column'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start, //main axis itu sumbu Y
          crossAxisAlignment: CrossAxisAlignment.start, //cross axis itu sumbu X
          children: [
            Text('Teks 1'),
            Text('Teks 2'),
            Text('Teks 3'),
            Column(
              children: [
                Text('Teks 4'),
                Text('Teks 5'),
                Text('Teks 6')
              ],
            )
          ],
        ),
      ),
    );
  }
}
