import 'package:dd_js_util/api/base.dart';
import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/common/string_ext.dart';
import 'package:dd_js_util/ext/int.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:dd_js_util/ext/widget/col.dart';
import 'package:extended_text/extended_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoloshow/common/int_ext.dart';
import 'package:yoloshow/pages/message/model/message_model.dart';

import '../../../wigdet/follow_btn.dart';

///消息item的widget布局
class MessageItemLayout extends StatelessWidget {
  final MessageModel model;
  final int index;

  const MessageItemLayout(this.model, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (model.type.toMessageTypeEnum) {

      ///留言布局
      case MessageItemType.message:
        return Row(
          children: [
            mainPic,
            10.gapH,
            ColWrap(
              children: [
                nameWidget,
                RichText(
                    text: TextSpan(text: '在 1 則留言中提及了你 :', style: TextStyle(color: Colors.white, fontSize: 12.sp), children: [
                  TextSpan(text: ' @${model.atToName} ', style: TextStyle(fontSize: 12.sp, color: Colors.blue)),
                  TextSpan(text: '${model.msg}', style: TextStyle(color: Colors.white, fontSize: 12.sp))
                ])),
                timeWidget
              ],
            ),
            10.gapH,
            subPic
          ],
        ).defaultPadding8;

      ///关注布局
      case MessageItemType.follow:
        return Row(
          children: [
            mainPic,
            10.gapH,
            ColWrap(children: [nameWidget, '開始追蹤你'.fontSizeText(12.sp, color: Colors.white), timeWidget]),
            10.gapH,
            followBtn
          ],
        ).defaultPadding8;

      ///点赞布局
      case MessageItemType.like:
        return Row(
          children: [
            mainPic,
            10.gapH,
            ColWrap(children: [
              nameWidget,
              RichText(
                text: TextSpan(text: '對你的留言傳達了心情 : ', style: TextStyle(fontSize: 12.sp, color: Colors.white), children: [
                  ImageSpan(const AssetImage('assets/bg/zan.png'), imageWidth: 14.www, imageHeight: 14.www),
                  const TextSpan(text: ' '),
                  TextSpan(text: model.msg, style: TextStyle(color: Colors.white, fontSize: 12.sp))
                ]),
              ),
              timeWidget
            ]),
            10.gapH,
            subPic
          ],
        ).defaultPadding8;

      ///未处理的布局
      default:
        return const SizedBox(
          child: Text('未处理的消息类型'),
        );
    }
  }

  Widget get timeWidget => model.timeStr.fontSizeText(10.sp, color: const Color(0xff999999));

  Widget get nameWidget => model.name.fontSizeText(14.sp, color: Colors.white);

  @Doc(message: '边距')
  EdgeInsets get defaultPadding => EdgeInsets.only(left: 17.www, right: 17.www);

  @Doc(message: '关注按钮')
  Widget get followBtn => FollowButton(
        onTap: () {},
        fontSize: 12.sp,
      ).sizeBox(69.www, 28.hhh);

  @Doc(message: '主图')
  Widget get mainPic {
    return Image.network(
      model.avatar,
      width: 53.www,
      height: 53.www,
    ).circleWidget;
  }

  @Doc(message: '次要图片')
  Widget get subPic {
    return Image.network(
      model.subAvatar ?? '',
      width: 53.www,
      height: 53.www,
    ).circleWidget;
  }
}

class ColWrap extends StatelessWidget {
  final List<Widget> children;

  const ColWrap({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: children,
    ).minHeight(53.www).expanded;
  }
}
