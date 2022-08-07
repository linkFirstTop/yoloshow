import 'package:dd_js_util/common/string_ext.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:dd_js_util/ext/widget/col.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yoloshow/common/int_ext.dart';
import 'package:yoloshow/common/string_ext.dart';

///用户信息展示
class UserInfoWidget extends ConsumerWidget {
  const UserInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const UserInfoSvg(
              svgpath: 'u_1',
              title: 'Visitors',
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
              'Yolololo'.fontSizeText(20.sp, color: Colors.white, fontWeight: FontWeight.w700),
              1.gapV,
              '@yolo_show'.fontSizeText(12.sp, color: const Color(0xff999999))
            ]),
            const UserInfoSvg(
              svgpath: 'u_2',
              title: 'New York',
            )
          ],
        ),
        27.gapV,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            UserInfoIconWidget(
              title: 'Following',
              value: '500',
            ),
            UVDiver(),
            UserInfoIconWidget(
              title: 'Fans',
              value: '3.4K',
            ),
            UVDiver(),
            UserInfoIconWidget(
              title: 'Posts',
              value: '36',
            ),
            UVDiver(),
            UserInfoIconWidget(
              title: 'Collect',
              value: '18',
            )
          ],
        ),
        15.gapV,
        'Power said to the world, "You are mine.The world kept it prisoner on her throne.Love said to the world, "I am thine."The world gave it the freedom of her house.'
            .fontSizeText(14.sp, color: Colors.white)
            .marginOnly(left: 17.www, right: 23.www),
        21.gapV,
        const Divider(
          color: Colors.white10,
        )
      ],
    ).marginOnly(top: 60.hhh).toSliverWidget;
  }
}

class UserInfoSvg extends StatelessWidget {
  final String svgpath;
  final String title;

  const UserInfoSvg({Key? key, required this.svgpath, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [svgpath.svgAssetsPath.svgWithColor(const Color(0xffEC2A83)), 2.gapV, title.fontSizeText(12.sp, color: const Color(0xffEC2A83))]);
  }
}

class UserInfoIconWidget extends StatelessWidget {
  final String title;
  final String value;

  const UserInfoIconWidget({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        value.fontSizeText(18.sp, color: Colors.white, fontWeight: FontWeight.w700),
        2.gapV,
        title.fontSizeText(12.sp, color: const Color(0xff999999))
      ],
    );
  }
}

class UVDiver extends StatelessWidget {
  const UVDiver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.www,
      height: 19.hhh,
      color: Colors.white10,
    );
  }
}
