import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/context.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yoloshow/tools/constant.dart';
import 'package:yoloshow/tools/expand_util.dart';
import 'package:yoloshow/wigdet/bg.dart';

import '../../wigdet/h_btn.dart';
import '../tag/view.dart';

///登录页面
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Bg(bg: 'img'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [_buildLogo(), _buildForm(context)],
            ),
          ),
        ),
      ],
    ).editPage;
  }

  Widget _buildLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/logo.svg',
          width: 205.w,
        ),
        SvgPicture.asset(
          'assets/svgs/mini_logo.svg',
          width: 51.w,
        ),
      ],
    ).mt(47.h + 175.h);
  }

  Widget _buildTextFile(String hintText) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(100)),
          fillColor: const Color.fromRGBO(255, 255, 255, 0.2),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500)),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Column(
      children: [
        _buildTextFile(context.l10n.username).marginOnly(
          left: 44.w,
          right: 44.w
        ),
        Gap.v(18.h),
        _buildTextFile(context.l10n.password).marginOnly(
            left: 44.w,
            right: 44.w
        ),
        Gap.v(51.h),
        _buildActions(context),
        Gap.v(16.h),
        _buildButton(context).marginOnly(
            left: 44.w,
            right: 44.w
        ),
        Gap.v(18.h),
        _buildLoginWith(context)
      ],
    ).mt(126.h);
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.l10n.termsOfService,
          style: const TextStyle(color: Colors.white),
        ),
        Container(
          height: 10,
          width: 1,
          color: Colors.grey,
          margin: const EdgeInsets.only(left: 12, right: 12),
        ),
        Text(context.l10n.privacyPolicy, style: const TextStyle(color: Colors.white))
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return DefaultButton(
      child: [
        Text(
          context.l10n.login,
          style: const TextStyle(color: Colors.white),
        )
      ],
      onTap: () => context.navToWidget(to: SelectTagPage()),
    ).width(double.infinity);
  }

  Widget _buildLoginWith(BuildContext context) {
    final iconSize = 24.w;
    return Column(
      children: [
        Text(
          context.l10n.orLoginWith,
          style: const TextStyle(color: Colors.grey),
        ),
        Gap.v(32.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/facebook.svg',
              width: iconSize,
              height: iconSize,
              color: Colors.white,
            ),
            Gap.h(57.w),
            Image.asset(
              'assets/bg/tt.png',
              width: iconSize,
              height: iconSize,
            ),
            Gap.h(57.w),
            Image.asset(
              'assets/bg/google.png',
              width: iconSize,
              height: iconSize,
            ),
          ],
        ),
      ],
    );
  }
}
