import 'package:dd_js_util/ext/int.dart';
import 'package:flutter/material.dart';
import 'package:yoloshow/common/string_ext.dart';

///首页
class IndexPageAppbar extends StatelessWidget implements PreferredSizeWidget {
  const IndexPageAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      backgroundColor: Colors.transparent,
      title: Image.asset('assets/bg/index_logo.png',height: 20,),
      actions: [
        'map'.svgAssetsPath.svg,
        15.w,
        'search'.svgAssetsPath.svg,
        15.w,
        'index_user'.svgAssetsPath.svg,
        15.w
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
