import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:flutter/material.dart';

final kAvatars = [
  'https://img.itbug.shop/public%2F2022-08-0107%3A20%3A22%2FWBVVgO.jpg',
  'https://img.itbug.shop/public%2F2022-08-0107%3A24%3A46%2FGbJBup.jpg',
  'https://img.itbug.shop/public%2F2022-08-0107%3A24%3A58%2FNgOhwK.jpg',
  'https://img.itbug.shop/public%2F2022-08-0107%3A26%3A52%2FqRAY8P.jpg'
];

///首页横向头像列表
class UserAvatars extends StatelessWidget {
  const UserAvatars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 12),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: kAvatars
              .map((e) => AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    e,
                    width: 70,
                  ).clipRadius(10)).mr(12))
              .toList(),
        ),
      ),
    );
  }
}
