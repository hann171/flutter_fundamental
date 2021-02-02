import 'package:flutter/material.dart';
import 'package:flutter_fundamental/loginPage.dart';

void main() {
  //fungsi main, fungsi yang pertama kali dijalankan saat aplikasi dibuka
  runApp(MyApp()); //fungsi main jalanin class MyApp
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                maxLength: 5,
                obscureText: false, //untuk password
                onChanged: (text){
                  setState(() {
                    
                  });
                },
                controller: controller,
              ),
            ),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
