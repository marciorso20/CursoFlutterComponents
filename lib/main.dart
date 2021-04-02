import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Components(),
          Components(),
          Components(),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.green,
                  margin: EdgeInsets.only(top: 10),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    margin: EdgeInsets.only(left: 25),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    margin: EdgeInsets.only(right: 25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Components extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 500,
      height: 100,
      margin: EdgeInsets.all(20),
    );
  }
}
