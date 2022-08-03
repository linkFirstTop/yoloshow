import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/context.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [const Bg(bg: 'img'), _buildLogo(), _buildForm(context)],
      ),
    );
  }

  Widget _buildLogo() {
    return Positioned(
      left: 0,
      right: 0,
      top: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/svgs/logo.svg',
            width: 220,
          ),
          SvgPicture.asset(
            'assets/svgs/mini_logo.svg',
            width: 100,
          ),
        ],
      ),
    );
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
    return Positioned(
        left: 50,
        right: 50,
        top: 332 + 60,
        child: Column(
          children: [
            _buildTextFile(context.l10n.username),
            Gap.v(21),
            _buildTextFile(context.l10n.password),
            Gap.v(45),
            _buildActions(context),
            Gap.v(12),
            _buildButton(context),
            Gap.v(12),
            _buildLoginWith(context)
          ],
        ));
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
    return Column(
      children: [
        Gap.v(20),
        Text(
          context.l10n.orLoginWith,
          style: const TextStyle(color: Colors.grey),
        ),
        Gap.v(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/facebook.svg',
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            Gap.h(50),
            Image.asset(
              'assets/bg/tt.png',
              width: 20,
              height: 20,
            ),
            Gap.h(50),
            Image.asset(
              'assets/bg/google.png',
              width: 20,
              height: 20,
            ),
          ],
        )
      ],
    );
  }
}
