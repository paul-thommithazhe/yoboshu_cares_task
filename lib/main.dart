import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task'),
        backgroundColor: const Color(0xFF444444),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const VerticalDividerWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 180,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('status',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 148, 144, 144),
                              fontSize: 25)),
                      Text(
                        'Beginner',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 28),
                      ),
                      Text(
                        'LEVEL-1',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                      Text(
                        'Psychology of weight',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 67, 65, 65),
                            fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 238, 180, 91),
              ),
              height: 145,
            ),
          ),
          VerticalDividerWidget(),
          Positioned(top: 70, child: CircleAvatarWidget()),
          LeftArcWidget(),

          SizedBox(height: 80),
          RightArcWidget(),
          // CustomPaint(painter: OpenPainterLine()),
          RowCircleAvatarWidget(),
          SizedBox(height: 80),
          Align(
            alignment: Alignment.center,
            child: CircleAvatarWidget(),
          ),
          LeftArcWidget(),
          SizedBox(height: 70),
          RightArcWidget(),
          RowCircleAvatarWidget(),
          SizedBox(height: 70),
          CircleAvatarWidget(),
          LeftArcWidget(),
          SizedBox(height: 70),
          RowCircleAvatarWidget(),
        ],
      ),
    );
  }
}

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: VerticalDivider(
        thickness: 20,
        color: Colors.black,
      ),
    );
  }
}

class RowCircleAvatarWidget extends StatelessWidget {
  const RowCircleAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatarWidget(),
        Container(
          color: Colors.black,
          height: 20,
          width: 70,
        ),
        CircleAvatarWidget()
      ],
    );
  }
}

class RightArcWidget extends StatelessWidget {
  const RightArcWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: OpenPainter2(),
    );
  }
}

class LeftArcWidget extends StatelessWidget {
  const LeftArcWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: OpenPainter(),
    );
  }
}

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  double degreesToRadians(num degrees) {
    const pi = 3.14;
    num radians = degrees.remainder(360);
    return radians * pi / 180;
  }

  void paint(Canvas canvas, Size size) {
    var paint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    const arcCenter = Offset(132, 40);
    final arcRect = Rect.fromCircle(center: arcCenter, radius: 100);
    final startAngle = degreesToRadians(90);
    final sweepAngle = degreesToRadians(190);
    canvas.drawArc(arcRect, startAngle, sweepAngle, false, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

// class OpenPainterLine extends CustomPainter {
//   @override
//   double degreesToRadians(num degrees) {
//     const pi = 3.14;
//     num radians = degrees.remainder(360);
//     return radians * pi / 180;
//   }

//   void paint(Canvas canvas, Size size) {
//     var paint2 = Paint()
//       ..color = Colors.black
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 20;

//     const arcCenter = Offset(250, 138);
//     final arcRect = Rect.fromCircle(center: arcCenter, radius: 100);
//     final startAngle = degreesToRadians(99.5);
//     final sweepAngle = degreesToRadians(-190);
//     canvas.drawLine();
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }

class OpenPainter2 extends CustomPainter {
  @override
  double degreesToRadians(num degrees) {
    const pi = 3.14;
    num radians = degrees.remainder(360);
    return radians * pi / 180;
  }

  void paint(Canvas canvas, Size size) {
    var paint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    const arcCenter = Offset(250, 138);
    final arcRect = Rect.fromCircle(center: arcCenter, radius: 100);
    final startAngle = degreesToRadians(99.5);
    final sweepAngle = degreesToRadians(-190);
    canvas.drawArc(arcRect, startAngle, sweepAngle, false, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
