import 'package:flutter/material.dart';

class Gap {
  Gap._();
  static Widget v(double v) {
    return SizedBox(
      height: v,
    );
  }
  static Widget h(double v) {
    return SizedBox(
      width: v,
    );
  }
}
