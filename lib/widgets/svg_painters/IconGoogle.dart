import 'package:flutter/material.dart';

// Way to use SWGs in Flutter in more optimised and efficient way
// https://fluttershapemaker.com/#/
// https://medium.com/@kamranzafar128/flutter-performance-tip-how-to-use-svg-assets-as-a-pro-developer-d2ccb962d958
// 

class IconGoogle extends StatelessWidget {
  final double size;
  final Color? color;

  const IconGoogle({
    Key? key,
    this.size = 24.0,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: IconGoogleCustomPainter.s(size),
      painter: IconGoogleCustomPainter(color: color),
    );
  }
}

class IconGoogleCustomPainter extends CustomPainter {
  final Color? color;
  // update constructor name according to your class name
  const IconGoogleCustomPainter({this.color});

  static Size s(double w) => Size(w, w);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(23.9996, 19.6363);
    path_0.lineTo(23.9996, 28.9309);
    path_0.lineTo(36.916, 28.9309);
    path_0.cubicTo(36.3488, 31.9199, 34.6468, 34.4509, 32.0941, 36.1527);
    path_0.lineTo(39.8831, 42.1964);
    path_0.cubicTo(44.4213, 38.0075, 47.0395, 31.8547, 47.0395, 24.5456);
    path_0.cubicTo(47.0395, 22.8438, 46.8868, 21.2073, 46.6031, 19.6366);
    path_0.lineTo(23.9996, 19.6363);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color ?? Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(10.5494, 28.5681);
    path_1.lineTo(8.79263, 29.9128);
    path_1.lineTo(2.57434, 34.7564);
    path_1.cubicTo(6.52342, 42.589, 14.6174, 48, 23.9991, 48);
    path_1.cubicTo(30.4789, 48, 35.9116, 45.8618, 39.8826, 42.1965);
    path_1.lineTo(32.0936, 36.1528);
    path_1.cubicTo(29.9554, 37.5928, 27.2281, 38.4656, 23.9991, 38.4656);
    path_1.cubicTo(17.7591, 38.4656, 12.4575, 34.2547, 10.5592, 28.5819);
    path_1.lineTo(10.5494, 28.5681);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = color ?? Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(2.57436, 13.2437);
    path_2.cubicTo(0.938084, 16.4726, 0, 20.1163, 0, 23.9999);
    path_2.cubicTo(0, 27.8834, 0.938084, 31.5271, 2.57436, 34.7561);
    path_2.cubicTo(2.57436, 34.7778, 10.5599, 28.5597, 10.5599, 28.5597);
    path_2.cubicTo(10.08, 27.1197, 9.79624, 25.5926, 9.79624, 23.9996);
    path_2.cubicTo(9.79624, 22.4067, 10.08, 20.8795, 10.5599, 19.4395);
    path_2.lineTo(2.57436, 13.2437);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = color ?? Colors.white.withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(23.9996, 9.55636);
    path_3.cubicTo(27.5342, 9.55636, 30.676, 10.7781, 33.1851, 13.1345);
    path_3.lineTo(40.0577, 6.2619);
    path_3.cubicTo(35.8904, 2.37833, 30.4797, 0, 23.9996, 0);
    path_3.cubicTo(14.6179, 0, 6.52342, 5.38908, 2.57434, 13.2437);
    path_3.lineTo(10.5597, 19.44);
    path_3.cubicTo(12.4578, 13.7672, 17.7596, 9.55636, 23.9996, 9.55636);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = color ?? Colors.white.withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
