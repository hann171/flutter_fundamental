import 'package:flutter/material.dart';
import 'package:flutter_fundamental/post_result_model.dart';

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
              Text((postResult != null
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created +
                      " | "
                  : "Tidak ada data")),
              RaisedButton(
                onPressed: () {
                  PostResult.connectAPI("Dadu", "Dokter").then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text("Post"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
