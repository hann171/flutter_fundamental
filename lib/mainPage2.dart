import 'package:flutter/material.dart';

class MainPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait) //jika portrait
          ? Column(children: generateContainers()) //jika benar
          : Row( //jika salah
              children: generateContainers(),
            ),
    );
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(
        color: Colors.amber,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.orange,
        width: 100,
        height: 100,
      ),
    ];
  }
}
