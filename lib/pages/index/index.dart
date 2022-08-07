import 'package:dd_js_util/ext/widget.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoloshow/pages/index/model/post.dart';
import 'package:yoloshow/pages/index/widget/posts.dart';

import '../../wigdet/bg.dart';
import 'widget/appbar.dart';
import 'widget/suggestion.dart';
import 'widget/user_avatars.dart';

///首页
class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: EasyRefresh.builder(childBuilder: (c, p) {
        return CustomScrollView(
          slivers: [
            const IndexPageAppbar(),
            const UserAvatars().toSliverWidget,
            const Divider(
              color: Colors.white10,
            ).toSliverWidget,
            PostListWidget(posts: kMockPost),
            const IndexSuggesionWidget().toSliverWidget,
            SizedBox(height: 86.h,).toSliverWidget
          ],
        );
      }),
    ).backgroundImageWrap;
  }
}
