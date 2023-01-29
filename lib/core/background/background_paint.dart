import 'package:flutter/material.dart';

class BackgroundPaint extends CustomPainter {
  final bool isRegister;

  BackgroundPaint({required this.isRegister});

  @override
  void paint(Canvas canvas, Size size) {
    final onePorcentOfHeight = size.height / 100;
    final onePorcentOfWidth = size.width / 100;

    Paint topPaint = Paint()
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

    Paint topPaintBorder = Paint()
      ..color = const Color.fromARGB(43, 255, 73, 1)
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke;

    Paint bottomPaintBorder = Paint()
      ..color = const Color.fromARGB(151, 176, 233, 255)
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke;

    Paint bottomPaint = Paint()
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

    canvas.drawPath(
        _generateTopPathBorder(onePorcentOfHeight, onePorcentOfWidth),
        topPaintBorder);
    canvas.drawPath(
        _generateTopPath(onePorcentOfHeight, onePorcentOfWidth), topPaint);

    canvas.drawPath(
        _generateBottomPathBorder(onePorcentOfHeight, onePorcentOfWidth),
        bottomPaintBorder);
    canvas.drawPath(_generateBottomPath(onePorcentOfHeight, onePorcentOfWidth),
        bottomPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  Path _generateTopPath(double onePorcentOfHeight, double onePorcentOfWidth) {
    Path topPath = Path();

    topPath.moveTo(0, 250);
    topPath.lineTo(0, 0);

    topPath.lineTo(onePorcentOfWidth * 95, 0);
    topPath.quadraticBezierTo(
      onePorcentOfWidth * 95,
      onePorcentOfHeight * 5,
      onePorcentOfWidth * 50,
      onePorcentOfHeight * 10,
    );

    topPath.quadraticBezierTo(
      onePorcentOfWidth * 15,
      onePorcentOfHeight * 14,
      onePorcentOfWidth * 10,
      onePorcentOfHeight * 30,
    );

    topPath.quadraticBezierTo(
      onePorcentOfWidth * 8,
      onePorcentOfHeight * 35,
      onePorcentOfWidth * 0,
      onePorcentOfHeight * 35,
    );
    return topPath;
  }

  Path _generateTopPathBorder(
      double onePorcentOfHeight, double onePorcentOfWidth) {
    Path topPathBorder = Path();

    topPathBorder.moveTo(onePorcentOfWidth * 95, 0);
    topPathBorder.quadraticBezierTo(
      onePorcentOfWidth * 95,
      onePorcentOfHeight * 5,
      onePorcentOfWidth * 50,
      onePorcentOfHeight * 10,
    );

    topPathBorder.quadraticBezierTo(
      onePorcentOfWidth * 15,
      onePorcentOfHeight * 14,
      onePorcentOfWidth * 10,
      onePorcentOfHeight * 30,
    );

    topPathBorder.quadraticBezierTo(
      onePorcentOfWidth * 8,
      onePorcentOfHeight * 35,
      onePorcentOfWidth * 0,
      onePorcentOfHeight * 35,
    );
    return topPathBorder;
  }

  Path _generateBottomPath(
      double onePorcentOfHeight, double onePorcentOfWidth) {
    Path bottomPath = Path();

    bottomPath.moveTo(onePorcentOfWidth * 100, onePorcentOfHeight * 69);
    bottomPath.lineTo(onePorcentOfWidth * 100, onePorcentOfHeight * 100);
    bottomPath.lineTo(onePorcentOfWidth * 10, onePorcentOfHeight * 100);
    bottomPath.quadraticBezierTo(
      onePorcentOfWidth * 11,
      onePorcentOfHeight * 95,
      onePorcentOfWidth * 45,
      onePorcentOfHeight * 93,
    );
    bottomPath.quadraticBezierTo(
      onePorcentOfWidth * 80,
      onePorcentOfHeight * 90,
      onePorcentOfWidth * 95,
      onePorcentOfHeight * 72,
    );
    bottomPath.quadraticBezierTo(
      onePorcentOfWidth * 98,
      onePorcentOfHeight * 69,
      onePorcentOfWidth * 100,
      onePorcentOfHeight * 69,
    );

    return bottomPath;
  }

  Path _generateBottomPathBorder(
      double onePorcentOfHeight, double onePorcentOfWidth) {
    Path bottomPathBorder = Path();

    bottomPathBorder.moveTo(onePorcentOfWidth * 100, onePorcentOfHeight * 69);
    bottomPathBorder.lineTo(onePorcentOfWidth * 100, onePorcentOfHeight * 100);
    bottomPathBorder.lineTo(onePorcentOfWidth * 10, onePorcentOfHeight * 100);
    bottomPathBorder.quadraticBezierTo(
      onePorcentOfWidth * 11,
      onePorcentOfHeight * 95,
      onePorcentOfWidth * 45,
      onePorcentOfHeight * 93,
    );
    bottomPathBorder.quadraticBezierTo(
      onePorcentOfWidth * 80,
      onePorcentOfHeight * 90,
      onePorcentOfWidth * 95,
      onePorcentOfHeight * 72,
    );
    bottomPathBorder.quadraticBezierTo(
      onePorcentOfWidth * 98,
      onePorcentOfHeight * 69,
      onePorcentOfWidth * 100,
      onePorcentOfHeight * 69,
    );

    return bottomPathBorder;
  }
}
