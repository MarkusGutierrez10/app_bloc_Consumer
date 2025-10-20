import 'package:flutter/material.dart';

class MultiLayerBackground extends StatelessWidget {
  const MultiLayerBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomPaint(
        painter: MultiLayerPainter(),
      ),
    );
  }
}

class MultiLayerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    paint.color = const Color.fromARGB(255, 217, 255, 0).withOpacity(0.7);
    final pathRed = Path();
    pathRed.moveTo(0, size.height * 0.75);
    pathRed.quadraticBezierTo(
      size.width * 0.3, size.height * 0.85,
      size.width * 0.6, size.height * 0.75,
    );
    pathRed.quadraticBezierTo(
      size.width * 0.85, size.height * 0.65,
      size.width, size.height * 0.75,
    );
    pathRed.lineTo(size.width, 0);
    pathRed.lineTo(0, 0);
    pathRed.close();
    canvas.drawPath(pathRed, paint);

    paint.color = Colors.indigo.withOpacity(0.7);
    final pathBlue = Path();
    pathBlue.moveTo(0, size.height * 0.65);
    pathBlue.quadraticBezierTo(
      size.width * 0.25, size.height * 0.75,
      size.width * 0.5, size.height * 0.65,
    );
    pathBlue.quadraticBezierTo(
      size.width * 0.75, size.height * 0.55,
      size.width, size.height * 0.65,
    );
    pathBlue.lineTo(size.width, 0);
    pathBlue.lineTo(0, 0);
    pathBlue.close();
    canvas.drawPath(pathBlue, paint);

    paint.color = const Color.fromARGB(255, 250, 0, 0).withOpacity(0.7);
    final pathYellow = Path();
    pathYellow.moveTo(0, size.height * 0.4);
    pathYellow.quadraticBezierTo(
      size.width * 0.35, size.height * 0.5,
      size.width * 0.7, size.height * 0.4,
    );
    pathYellow.quadraticBezierTo(
      size.width * 0.85, size.height * 0.3,
      size.width, size.height * 0.4,
    );
    pathYellow.lineTo(size.width, 0);
    pathYellow.lineTo(0, 0);
    pathYellow.close();
    canvas.drawPath(pathYellow, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
