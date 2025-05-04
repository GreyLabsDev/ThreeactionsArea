import 'package:flutter/material.dart';

// Way to use SWGs in Flutter in more optimised and efficient way
// https://fluttershapemaker.com/#/
// https://medium.com/@kamranzafar128/flutter-performance-tip-how-to-use-svg-assets-as-a-pro-developer-d2ccb962d958
// 

class IconXTwitter extends StatelessWidget {
  final double size;
  final Color? color;

  const IconXTwitter({
    Key? key,
    this.size = 24.0,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: IconXTwitterCustomPainter.s(size),
      painter: IconXTwitterCustomPainter(color: color),
    );
  }
}

class IconXTwitterCustomPainter extends CustomPainter {
  final Color? color;
  // update constructor name according to your class name
  const IconXTwitterCustomPainter({this.color});

  static Size s(double w) => Size(w, w);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(36.6526, 3.8078);
    path_0.lineTo(43.3995, 3.8078);
    path_0.lineTo(28.6594, 20.6548);
    path_0.lineTo(46, 43.5797);
    path_0.lineTo(32.4225, 43.5797);
    path_0.lineTo(21.7881, 29.6759);
    path_0.lineTo(9.61989, 43.5797);
    path_0.lineTo(2.86886, 43.5797);
    path_0.lineTo(18.6349, 25.56);
    path_0.lineTo(2, 3.8078);
    path_0.lineTo(15.9222, 3.8078);
    path_0.lineTo(25.5348, 16.5165);
    path_0.lineTo(36.6526, 3.8078);
    path_0.close();
    path_0.moveTo(34.2846, 39.5414);
    path_0.lineTo(38.0232, 39.5414);
    path_0.lineTo(13.8908, 7.63406);
    path_0.lineTo(9.87892, 7.63406);
    path_0.lineTo(34.2846, 39.5414);
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
