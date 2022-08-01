import 'package:dd_js_util/api/base.dart';
import 'package:dd_js_util/ext/int.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final List<Widget> child;
  final VoidCallback? onTap;

  const DefaultButton({Key? key, required this.child, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      constraints: BoxConstraints(
        minHeight: 51
      ),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xffEC2A83), Color(0xff871CF4)],
          ),
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [BoxShadow(color: Colors.purple, spreadRadius: 1, offset: Offset(1, 1), blurRadius: 10)]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: child,
      ),
    ).click(onTap ?? () {});
  }
}
