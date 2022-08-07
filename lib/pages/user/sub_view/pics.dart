import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import 'package:yoloshow/common/int_ext.dart';
import 'package:yoloshow/common/string_ext.dart';
import 'package:yoloshow/pages/user/mock/user_view_pic_model_mock.dart';
import 'package:yoloshow/pages/user/model/user_pic_model.dart';

class UserPicView extends ConsumerWidget {
  const UserPicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WaterfallFlow.count(
      crossAxisCount: 3,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      padding: EdgeInsets.zero,
      children: userViewPicModelMockData.map((e) => UserPicViewItem(userViewPicModel: e)).toList(),
    );
  }
}

class UserPicViewItem extends StatelessWidget {
  final UserViewPicModel userViewPicModel;

  const UserPicViewItem({Key? key, required this.userViewPicModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final size = constraints.maxWidth;
        return Stack(
          children: [
            Image.network(
              userViewPicModel.pic,
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              fit: BoxFit.cover,
            ),
            if(userViewPicModel.isVideo)
              Positioned.fill(child: 'play'.svgAssetsPath.svg.sizeBox(30.www, 30.www).center),
            if(userViewPicModel.isGroup)
              Positioned(
                right: 6.hhh,
                top: 6.hhh,
                child: 'pic'.svgAssetsPath.svg,
              )
          ],
        ).sizeBox(size,size);
      },
    );
  }
}
