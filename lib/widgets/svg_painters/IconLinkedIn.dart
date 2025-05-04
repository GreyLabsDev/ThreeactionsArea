import 'package:flutter/material.dart';

// Way to use SWGs in Flutter in more optimised and efficient way
// https://fluttershapemaker.com/#/
// https://medium.com/@kamranzafar128/flutter-performance-tip-how-to-use-svg-assets-as-a-pro-developer-d2ccb962d958
// 

class Iconlinkedin extends StatelessWidget {
  final double size;
  final Color? color;

  const Iconlinkedin({
    Key? key,
    this.size = 24.0,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: IconlinkedinCustomPainer.s(size),
      painter: IconlinkedinCustomPainer(color: color),
    );
  }
}

class IconlinkedinCustomPainer extends CustomPainter {
  final Color? color;
  // update constructor name according to your class name
  const IconlinkedinCustomPainer({this.color});

  static Size s(double w) => Size(w, w);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(44.4469, 0);
    path_0.lineTo(3.54375, 0);
    path_0.cubicTo(1.58437, 0, 0, 1.54688, 0, 3.45938);
    path_0.lineTo(0, 44.5312);
    path_0.cubicTo(0, 46.4437, 1.58437, 48, 3.54375, 48);
    path_0.lineTo(44.4469, 48);
    path_0.cubicTo(46.4062, 48, 48, 46.4438, 48, 44.5406);
    path_0.lineTo(48, 3.45938);
    path_0.cubicTo(48, 1.54688, 46.4062, 0, 44.4469, 0);
    path_0.close();
    path_0.moveTo(14.2406, 40.9031);
    path_0.lineTo(7.11563, 40.9031);
    path_0.lineTo(7.11563, 17.9906);
    path_0.lineTo(14.2406, 17.9906);
    path_0.lineTo(14.2406, 40.9031);
    path_0.close();
    path_0.moveTo(10.6781, 14.8688);
    path_0.cubicTo(8.39062, 14.8688, 6.54375, 13.0219, 6.54375, 10.7437);
    path_0.cubicTo(6.54375, 8.46562, 8.39062, 6.61875, 10.6781, 6.61875);
    path_0.cubicTo(12.9563, 6.61875, 14.8031, 8.46562, 14.8031, 10.7437);
    path_0.cubicTo(14.8031, 13.0125, 12.9563, 14.8688, 10.6781, 14.8688);
    path_0.close();
    path_0.moveTo(40.9031, 40.9031);
    path_0.lineTo(33.7875, 40.9031);
    path_0.lineTo(33.7875, 29.7656);
    path_0.cubicTo(33.7875, 27.1125, 33.7406, 23.6906, 30.0844, 23.6906);
    path_0.cubicTo(26.3812, 23.6906, 25.8187, 26.5875, 25.8187, 29.5781);
    path_0.lineTo(25.8187, 40.9031);
    path_0.lineTo(18.7125, 40.9031);
    path_0.lineTo(18.7125, 17.9906);
    path_0.lineTo(25.5375, 17.9906);
    path_0.lineTo(25.5375, 21.1219);
    path_0.lineTo(25.6312, 21.1219);
    path_0.cubicTo(26.5781, 19.3219, 28.9031, 17.4188, 32.3625, 17.4188);
    path_0.cubicTo(39.5719, 17.4188, 40.9031, 22.1625, 40.9031, 28.3313);
    path_0.lineTo(40.9031, 40.9031);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color ?? Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
