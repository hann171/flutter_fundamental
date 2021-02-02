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
          title: Text('Stack & Align Widget'),
        ),
        body: Stack(
          children: [
            //background
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ))
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            ),

            //list view
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Teks yang ada ditengah, layer ke 2 setelah background',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Teks yang ada ditengah, layer ke 2 setelah background',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Teks yang ada ditengah, layer ke 2 setelah background',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Teks yang ada ditengah, layer ke 2 setelah background',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Teks yang ada ditengah, layer ke 2 setelah background',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ],
                )
              ],
            ),

            //button
            Align(
              alignment: Alignment(0,0.75), //Alignment(x,y)
              child: RaisedButton(
                onPressed: () {},
                child: Text('Button'),
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
