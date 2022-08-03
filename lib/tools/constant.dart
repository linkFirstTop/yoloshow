import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gap {
  Gap._();
  static Widget v(double v) {
    return SizedBox(
      height: v.h,
    );
  }
  static Widget h(double v) {
    return SizedBox(
      width: v.w,
    );
  }
}
