import 'package:flutter/material.dart';

void main() {
  runApp(MyAppx());
}

class MyAppx extends StatefulWidget {
  @override
  State<MyAppx> createState() => _MyAppStatexa();
}

class _MyAppStatexa extends State<MyAppx> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 99, 184, 143),
                  ),
                  onPressed: () {
                    restartcounter();
                  },
                  child: Icon(Icons.replay),
                ),
                ElevatedButton(
                  onPressed: () {
                    sayknka();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent),
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ],
            )
          ],
        ),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }

  void restartcounter() {
    setState(
      () {
        sayac = 0;
      },
    );
  }

  void sayknka() {
    setState(
      () {
        sayac++;
      },
    );
  }
}
