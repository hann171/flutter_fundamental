import 'package:flutter/material.dart';
import 'package:flutter_fundamental/color_bloc2.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class MainPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc2 bloc = BlocProvider.of<ColorBloc2>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              bloc.dispatch(ColorEvent.to_amber);
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              bloc.dispatch(ColorEvent.to_blue);
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("BLoC dengan Flutter BLoC"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc2, Color>(
          builder: (context, currentColor) {
            return AnimatedContainer(
              width: 100,
              height: 100,
              color: currentColor,
              duration: Duration(milliseconds: 500),
            );
          }
        ),
      ),
    );
  }
}
