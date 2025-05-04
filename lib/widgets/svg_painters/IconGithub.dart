import 'package:flutter/material.dart';

// Way to use SWGs in Flutter in more optimised and efficient way
// https://fluttershapemaker.com/#/
// https://medium.com/@kamranzafar128/flutter-performance-tip-how-to-use-svg-assets-as-a-pro-developer-d2ccb962d958
// 

class IconGithub extends StatelessWidget {
  final double size;
  final Color? color;

  const IconGithub({
    Key? key,
    this.size = 24.0,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: IconGithubPainter.s(size),
      painter: IconGithubPainter(color: color),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class IconGithubPainter extends CustomPainter {
  final Color? color;
  // update constructor name according to your class name
  const IconGithubPainter({this.color});

  static Size s(double w) => Size(w, w);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(24.0199, 0);
    path_0.cubicTo(10.7375, 0, 0, 10.8167, 0, 24.1983);
    path_0.cubicTo(0, 34.895, 6.87988, 43.9495, 16.4241, 47.1542);
    path_0.cubicTo(17.6174, 47.3951, 18.0545, 46.6335, 18.0545, 45.9929);
    path_0.cubicTo(18.0545, 45.4319, 18.0151, 43.509, 18.0151, 41.5055);
    path_0.cubicTo(11.3334, 42.948, 9.94198, 38.6209, 9.94198, 38.6209);
    path_0.cubicTo(8.86818, 35.8164, 7.27715, 35.0956, 7.27715, 35.0956);
    path_0.cubicTo(5.09022, 33.6132, 7.43645, 33.6132, 7.43645, 33.6132);
    path_0.cubicTo(9.86233, 33.7735, 11.1353, 36.0971, 11.1353, 36.0971);
    path_0.cubicTo(13.2824, 39.7827, 16.7422, 38.7413, 18.1341, 38.1002);
    path_0.cubicTo(18.3328, 36.5377, 18.9695, 35.456, 19.6455, 34.8552);
    path_0.cubicTo(14.3163, 34.2942, 8.70937, 32.211, 8.70937, 22.9161);
    path_0.cubicTo(8.70937, 20.2719, 9.66321, 18.1086, 11.1746, 16.4261);
    path_0.cubicTo(10.9361, 15.8253, 10.1008, 13.3409, 11.4135, 10.0157);
    path_0.cubicTo(11.4135, 10.0157, 13.4417, 9.3746, 18.0146, 12.4996);
    path_0.cubicTo(19.9725, 11.9699, 21.9916, 11.7005, 24.0199, 11.6982);
    path_0.cubicTo(26.048, 11.6982, 28.1154, 11.979, 30.0246, 12.4996);
    path_0.cubicTo(34.5981, 9.3746, 36.6262, 10.0157, 36.6262, 10.0157);
    path_0.cubicTo(37.9389, 13.3409, 37.1031, 15.8253, 36.8646, 16.4261);
    path_0.cubicTo(38.4158, 18.1086, 39.3303, 20.2719, 39.3303, 22.9161);
    path_0.cubicTo(39.3303, 32.211, 33.7234, 34.2539, 28.3544, 34.8552);
    path_0.cubicTo(29.2296, 35.6163, 29.9848, 37.0583, 29.9848, 39.3421);
    path_0.cubicTo(29.9848, 42.5871, 29.9454, 45.1915, 29.9454, 45.9924);
    path_0.cubicTo(29.9454, 46.6335, 30.383, 47.3951, 31.5758, 47.1547);
    path_0.cubicTo(41.12, 43.9491, 47.9999, 34.895, 47.9999, 24.1983);
    path_0.cubicTo(48.0392, 10.8167, 37.2624, 0, 24.0199, 0);
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
