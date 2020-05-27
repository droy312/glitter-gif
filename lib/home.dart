import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random _random = new Random();
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      Duration(milliseconds: 100),
      (Timer t) => _smallBox(),
    );
  }

  // ------------- USING ----------------

  Widget _smallBox() {
    setState(() {});
    return Container(
      height: 6,
      width: 6,
      color: Color.fromRGBO(
        _random.nextInt(255),
        _random.nextInt(255),
        _random.nextInt(255),
        1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 60,
          width: 60,
          child: Table(
            children: [
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
              TableRow(children: List.generate(10, (i) => _smallBox())),
            ],
          ),
        ),
      ),
    );
  }
}
