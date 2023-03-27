import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 190,
            height: 180,
            child: Center(
              child: Container(
                color: Colors.black26,
                height: 50,
                width: 120,
                child: Text(
                  sayac.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black26,
              border: Border.all(color: Colors.black12, width: 5),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(190),
                topLeft: Radius.circular(190),
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
              boxShadow: [
                BoxShadow(color: Colors.greenAccent, blurRadius: 13),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          child: Icon(
            Icons.adjust,
            size: 50,
          ),
          onPressed: () {
            counter();
          },
        ),
      ),
    );
  }

  void counter() {
    setState(
      () {
        sayac++;
      },
    );
  }
}
