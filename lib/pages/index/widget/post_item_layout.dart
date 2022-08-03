import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/context.dart';
import 'package:dd_js_util/ext/int.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:flutter/material.dart';
import 'package:yoloshow/common/string_ext.dart';
import 'package:yoloshow/pages/index/model/post.dart';

class PostItemLayout extends StatelessWidget {
  final Post post;

  const PostItemLayout({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = RestrictedPositions(
      maxCoverage: -0.1,
      minCoverage: -0.5,
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
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 100,
                    height: 22,
                    alignment: Alignment.centerLeft,
                    child: WidgetStack(

                      buildInfoWidget: (int surplus) {
                        return Container(
                          child: Text('111'),
                        );
                      },
                      positions: settings,
                      stackedWidgets: [
                        'p_e_1'.svgAssetsPath.svg.padding(4).bg(Color(0xffFF4BB7)).circleWidget
                      ],
                    ),
                  ),
                ],
              )
            ],
          ).defaultPadding12
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
