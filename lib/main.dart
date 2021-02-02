import 'package:flutter/material.dart';
import 'package:flutter_fundamental/post_result_model.dart';
import 'package:flutter_fundamental/user_model.dart';

void main() {
  //fungsi main, fungsi yang pertama kali dijalankan saat aplikasi dibuka
  runApp(MyApp()); //fungsi main jalanin class MyApp
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User userResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((userResult != null
                  ? userResult.id + " | " + userResult.name
                  : "Tidak ada data")),
              RaisedButton(
                onPressed: () {
                  User.connectAPI("2").then((value) {
                    userResult = value;
                    setState(() {});
                  });
                },
                child: Text("Get"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
