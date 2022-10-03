import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text('expander and spaces'),
          backgroundColor: Colors.amberAccent.shade700),
      body: Container(
          child: Column(children: [
        Container(
          alignment: Alignment.center,
          height: 50,
          child: Text('Ancho'),
        ),
        Container(
            height: 100,
            child: Row(
              children: [
                extract(text: '1', color: 0xff7463f2),
                extract(text: '2', color: 0xff7463f2),
                extract(text: '3', color: 0xff7463f2),
                extract(text: '4', color: 0xff7463f2),
                // extract(text: 'Hola', color: 0xff7463f2),
              ],
            )),
      ])),
    );
  }
}

class extract extends StatelessWidget {
  const extract({required this.text, required this.color, Key? key})
      : super(key: key);

  final String text;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 70,
      height: double.infinity,
      color: Color(this.color),
      child: Text(
        this.text,
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
