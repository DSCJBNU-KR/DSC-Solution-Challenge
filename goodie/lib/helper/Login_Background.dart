import 'package:flutter/material.dart';

class Login_Background extends CustomPainter{

  Login_Background({@required this.isJoin});

  final bool isJoin;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = isJoin?Color.fromRGBO(91, 155, 213, 1):Color.fromRGBO(207, 159, 234, 1);
    canvas.drawCircle(Offset(size.width*0.5, size.height*0.2), size.height*0.5, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}