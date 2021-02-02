import 'package:flutter/material.dart';
import 'package:flutter_fundamental/mainPage2.dart';

void main() {
  //fungsi main, fungsi yang pertama kali dijalankan saat aplikasi dibuka
  runApp(MyApp()); //fungsi main jalanin class MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage2(),
    );
  }
}
