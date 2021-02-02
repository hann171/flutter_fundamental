import 'package:flutter/material.dart';
import 'package:flutter_fundamental/color_bloc2.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter_fundamental/mainPage3.dart';

void main() {
  //fungsi main, fungsi yang pertama kali dijalankan saat aplikasi dibuka
  runApp(MyApp()); //fungsi main jalanin class MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc2>(
        builder: (context) => ColorBloc2(),
        child: MainPage3(),
      ),
    );
  }
}