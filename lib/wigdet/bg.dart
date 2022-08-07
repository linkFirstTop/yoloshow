import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/context.dart';
import 'package:flutter/material.dart';


extension BgExt on Widget {
  Widget get backgroundImageWrap => Stack(
    children: [
      kDefaultBackgroundWidget,
      this
    ],
  );
}

Widget get kDefaultBackgroundWidget => const Bg(bg: 'tag_bg');

class Bg extends StatelessWidget {
  final String bg;

  const Bg({Key? key, required this.bg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(0, 0, 0, 0), Color(0xff000000)],
          ).createShader(bounds);
        },
        blendMode: BlendMode.colorBurn,
        child: Image.asset(
          'assets/bg/$bg.png',
          fit: BoxFit.cover,
        ),
      ).sizeBox(context.screenWidth,context.screenHeight),
    );
  }
}
