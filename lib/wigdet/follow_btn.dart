import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///关注按钮
class FollowButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double? fontSize;
  const FollowButton({Key? key, this.onTap, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.sp)))),
        onPressed: onTap,
        child:  Text('Follow',style: TextStyle(fontSize: fontSize),));
  }
}
