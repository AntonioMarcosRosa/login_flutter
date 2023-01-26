import 'package:flutter/material.dart';

class BackgroundPaint extends CustomPainter {
  final bool isRegister;

  BackgroundPaint({required this.isRegister});

  @override
  void paint(Canvas canvas, Size size) {
    final onePorcentOfHeight = size.height / 100;
    final onePorcentOfWidth = size.width / 100;

    var paint = Paint()
      ..color = const Color.fromARGB(255, 255, 73, 1)
      ..shader = const LinearGradient(colors: [
        Color.fromARGB(255, 250, 148, 108),
        Color.fromARGB(255, 179, 51, 0),
      ]).createShader(
        Rect.fromCircle(
            center: Offset(
              size.width,
              size.height,
            ),
            radius: 400),
      )
      ..strokeWidth = 3
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.square;

    var paint4 = Paint()
      ..color = const Color.fromARGB(43, 255, 73, 1)
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke;

    var paint2 = Paint()
      ..color = const Color.fromARGB(151, 176, 233, 255)
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke;

    var paint3 = Paint()
      ..color = const Color.fromARGB(255, 1, 91, 209)
      ..strokeWidth = 5
      ..shader = const LinearGradient(colors: [
        Color.fromARGB(255, 128, 230, 255),
        Color.fromARGB(255, 6, 85, 150),
      ]).createShader(
        Rect.fromCircle(
            center: Offset(
              size.width,
              size.height,
            ),
            radius: 200),
      )
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.square;

    var path = Path();
    var path4 = Path();
    var path2 = Path();
    var path3 = Path();

    //path.moveTo(x, y)
    path.moveTo(0, 250);
    path.lineTo(0, 0);
    path.lineTo(onePorcentOfWidth * 95, 0);
    path.quadraticBezierTo(
      onePorcentOfWidth * 95,
      onePorcentOfHeight * 5,
      onePorcentOfWidth * 50,
      onePorcentOfHeight * 10,
    );

    path.quadraticBezierTo(
      onePorcentOfWidth * 15,
      onePorcentOfHeight * 14,
      onePorcentOfWidth * 10,
      onePorcentOfHeight * 30,
    );

    path.quadraticBezierTo(
      onePorcentOfWidth * 8,
      onePorcentOfHeight * 35,
      onePorcentOfWidth * 0,
      onePorcentOfHeight * 35,
    );

    path4.moveTo(onePorcentOfWidth * 95, 0);
    path4.quadraticBezierTo(
      onePorcentOfWidth * 95,
      onePorcentOfHeight * 5,
      onePorcentOfWidth * 50,
      onePorcentOfHeight * 10,
    );

    path4.quadraticBezierTo(
      onePorcentOfWidth * 15,
      onePorcentOfHeight * 14,
      onePorcentOfWidth * 10,
      onePorcentOfHeight * 30,
    );

    path4.quadraticBezierTo(
      onePorcentOfWidth * 8,
      onePorcentOfHeight * 35,
      onePorcentOfWidth * 0,
      onePorcentOfHeight * 35,
    );

    canvas.drawPath(path4, paint4);
    canvas.drawPath(path, paint);

    path2.moveTo(size.width, onePorcentOfHeight * 69);
    path2.lineTo(size.width, size.height);
    path2.lineTo(onePorcentOfWidth * 10, size.height);
    path2.quadraticBezierTo(
      onePorcentOfWidth * 11,
      onePorcentOfHeight * 95,
      onePorcentOfWidth * 45,
      onePorcentOfHeight * 93,
    );
    path2.quadraticBezierTo(
      onePorcentOfWidth * 80,
      onePorcentOfHeight * 90,
      onePorcentOfWidth * 95,
      onePorcentOfHeight * 72,
    );
    path2.quadraticBezierTo(
      onePorcentOfWidth * 98,
      onePorcentOfHeight * 69,
      size.width,
      onePorcentOfHeight * 69,
    );

    path3.moveTo(size.width, onePorcentOfHeight * 69);
    path3.lineTo(size.width, size.height);
    path3.lineTo(onePorcentOfWidth * 10, size.height);
    path3.quadraticBezierTo(
      onePorcentOfWidth * 11,
      onePorcentOfHeight * 95,
      onePorcentOfWidth * 45,
      onePorcentOfHeight * 93,
    );
    path3.quadraticBezierTo(
      onePorcentOfWidth * 80,
      onePorcentOfHeight * 90,
      onePorcentOfWidth * 95,
      onePorcentOfHeight * 72,
    );
    path3.quadraticBezierTo(
      onePorcentOfWidth * 98,
      onePorcentOfHeight * 69,
      size.width,
      onePorcentOfHeight * 69,
    );
    canvas.drawPath(path2, paint2);
    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
