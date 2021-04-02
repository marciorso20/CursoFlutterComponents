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
                Align(
                  alignment: Alignment.center,
                  child: ColorRow(
                    cor: Colors.yellow,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ColorRow(
                    cor: Colors.yellow,
                    margem: EdgeInsets.only(left: 25),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ColorRow(
                    cor: Colors.yellow,
                    margem: EdgeInsets.only(right: 25),
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

class ColorRow extends StatelessWidget {
  final Color cor;
  final EdgeInsets margem;

  ColorRow({Key key, this.cor, this.margem = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: cor,
      margin: margem,
    );
  }
}

//Cards brancos
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
