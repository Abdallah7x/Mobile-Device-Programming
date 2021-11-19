import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Learn colors'),
      ),
      body: ListView(children: <Widget>[
        Row(
          children: [
            Container(
              width: 100,
              height: 200,
              child: CustomPaint(
                painter: OpenPainter(),
                child: Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                    ),
                    onPressed: () {
                      print('Black');
                    },
                    child: Text(
                      'My color',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 200,
              child: CustomPaint(
                painter: OpenPainter2(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 100,
              height: 200,
              child: CustomPaint(
                painter: OpenPainter3(),
              ),
            ),
            Container(
              width: 100,
              height: 200,
              child: CustomPaint(
                painter: OpenPainter4(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 100,
              height: 200,
              child: CustomPaint(
                painter: OpenPainter5(),
              ),
            ),
            Container(
              width: 100,
              height: 200,
              child: CustomPaint(
                painter: OpenPainter6(),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset(10, 30) & const Size(160, 150), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset(90, 30) & const Size(160, 150), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset(190, 10) & const Size(160, 150), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset(-90, 10) & const Size(160, 150), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset(10, 0) & const Size(160, 150), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter6 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset(90, 0) & const Size(160, 150), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
