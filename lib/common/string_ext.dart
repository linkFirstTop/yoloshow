import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///字符串的扩展
extension StringCommonExt on String {
  String get svgAssetsPath => "assets/svgs/$this"'.svg';
  Widget get svg => SvgPicture.asset(this);
}