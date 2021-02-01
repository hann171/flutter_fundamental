import 'package:flutter/material.dart';

void main() {
  //fungsi main, fungsi yang pertama kali dijalankan saat aplikasi dibuka
  runApp(MyApp()); //fungsi main jalanin class MyApp
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;
  void tambahAngka() {
    setState(() { //buat ngerefresh halaman otomatis sesuai state yang ada saat ini
      angka = angka + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Statefull widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(angka.toString(), 
              style: TextStyle(
                fontSize: 10 + angka.toDouble()
              ),),
              RaisedButton(onPressed: tambahAngka, child: Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
