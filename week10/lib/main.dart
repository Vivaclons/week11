import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'week-11',
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.blue,
        accentColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Homework Provider';

  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];

  var _index = 0;
  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            AnimatedAlign(
              alignment: _alignment,
              duration: Duration(seconds: 2),
              curve: Curves.easeIn,
              child: Stack(
                children: [
                  SizedBox(
                    width: 200.0,
                    height: 200.0,
                    child: Image(
                      image: AssetImage(
                          "assets/images/1*ilC2Aqp5sZd1wi0CopD1Hw.png"),
                    ),
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _index++;
                });
              },
              elevation: 0.0,
              backgroundColor: Colors.blue,
              tooltip: 'Play',
              heroTag: 'Align',
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 36.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
