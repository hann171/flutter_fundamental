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
          title: Text('Flutter Fundamental'),
        ),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            width: 150,
            height: 50,
            child: 
              Text('Hello World Hello World Hello World Hello World Hello World Hello World Hello World',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
          ),
        ),
      ),
    );
  }
}
