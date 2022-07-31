import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yoloshow/tools/constant.dart';
import 'package:yoloshow/tools/expand_util.dart';

///登录页面
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [_buildBg(context), _buildLogo(), _buildForm(context)],
      ),
    );
  }

  Widget _buildLogo() {
    return Positioned(
      left: 0,
      right: 0,
      top: 220,
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

  Widget _buildBg(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      left: 0,
      right: 0,
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
          'assets/bg/img.png',
          fit: BoxFit.cover,
        ),
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
        top: 332 + 100,
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
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xffEC2A83), Color(0xff871CF4)],
          ),
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [BoxShadow(color: Colors.purple, spreadRadius: 1, offset: Offset(1, 1), blurRadius: 10)]),
      child: Text(
        context.l10n.login,
        style: const TextStyle(color: Colors.white),
      ),
    );
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
