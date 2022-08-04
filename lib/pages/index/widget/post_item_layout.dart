import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/context.dart';
import 'package:dd_js_util/ext/int.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoloshow/common/string_ext.dart';
import 'package:yoloshow/pages/index/model/post.dart';

class PostItemLayout extends StatelessWidget {
  final Post post;

  const PostItemLayout({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = RestrictedPositions(
      maxCoverage: 0,
      minCoverage: 0.3,
      align: StackAlign.left,
    );
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostItemUserHeader(
            post: post,
          ),
          6.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(post.content, style: const TextStyle(color: Colors.white, fontSize: 14)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              post.tag,
              style: const TextStyle(color: Color(0xff36B7FF), fontSize: 14),
            ),
          ),
          12.h,
          Image.network(post.image![0]),
          12.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      'p_e_1'.svgAssetsPath.svg.padding(4).bg(const Color(0xffFF4BB7)).circleWidget,
                      Positioned(
                        right: -12,
                        child: 'p_e_2'.svgAssetsPath.svg.padding(4).bg(const Color(0xff4CB1FB)).circleWidget,
                      ),
                      Positioned(
                          right: -24,
                          child: Image.asset(
                            'assets/bg/p_e_3.png',
                            width: 18,
                            height: 18,
                          ))
                    ],
                  ),
                  30.w,
                  Text(
                    '85.4k',
                    style: TextStyle(fontSize: 10.sp, color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const PostKeyValueWidget(
                    value: '530',
                    title: 'comment',
                  ),
                  12.w,
                  const Text(
                    '·',
                    style: TextStyle(color: Colors.white),
                  ),
                  12.w,
                  const PostKeyValueWidget(
                    title: 'shares',
                    value: '530',
                  )
                ],
              ),

            ],
          ).defaultPadding12,
          const Divider(
            color: Color.fromRGBO(255, 255, 255, 0.1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              'p_e_6'.svgAssetsPath.svg,
              'p_e_7'.svgAssetsPath.svg,
              'p_e_8'.svgAssetsPath.svg,
            ],
          ),
          const Divider(
            color: Color.fromRGBO(255, 255, 255, 0.1),
          ),
        ],
      ),
    );
  }
}

class PostKeyValueWidget extends StatelessWidget {
  final String title;
  final String value;

  const PostKeyValueWidget({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$value ', style: TextStyle(fontSize: 10.sp, color: Colors.white)),
          Text(title, style: TextStyle(fontSize: 10.sp, color: Colors.white))
        ],
      ),
    );
  }
}

class PostItemUserHeader extends StatelessWidget {
  final Post post;

  const PostItemUserHeader({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Image.network(
            post.avatar,
            width: 53,
            height: 53,
          ).circleWidget,
          8.w,
          Expanded(
              child: Container(
            constraints: const BoxConstraints(minHeight: 53),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      post.name,
                      style: context.kTextTheme.titleMedium?.copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    8.w,
                    Text(
                      post.accountName,
                      style: const TextStyle(color: Color(0xff999999)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      post.timeString,
                      style: const TextStyle(color: Color(0xffCCCCCC)),
                    ),
                    26.w,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        'p_location'.svgAssetsPath.svg,
                        4.w,
                        Text(
                          post.location,
                          style: const TextStyle(color: const Color(0xffCCCCCC)),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
          'more_h'.svgAssetsPath.svg
        ],
      ),
    );
  }
}
