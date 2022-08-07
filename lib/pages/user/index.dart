import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:flutter/material.dart';
import 'package:yoloshow/common/int_ext.dart';
import 'package:yoloshow/common/string_ext.dart';
import 'package:yoloshow/wigdet/bg.dart';

import '../index/model/post.dart';
import '../index/widget/posts.dart';
import 'sub_view/pics.dart';
import 'widget/tab.dart';
import 'widget/user_info.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          NestedScrollView(
              headerSliverBuilder: (c, s) {
                return [
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    expandedHeight: 197.hhh + 40.www,
                    flexibleSpace: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          'assets/bg/u-bg.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Positioned(
                          bottom: -40.www,
                          left: 0,
                          right: 0,
                          child: Image.network(
                            'https://img.itbug.shop/public%2F2022-08-0107%3A24%3A46%2FGbJBup.jpg',
                            width: 80.www,
                            height: 80.www,
                          ).circleWidget.center,
                        )
                      ],
                    ),
                    stretch: false,
                    pinned: false,
                    actions: ['more_h'.svgAssetsPath.svg, 8.gapH],
                  ),
                  const UserInfoWidget(),
                  SliverPersistentHeader(delegate: UserTabs(_tabController),pinned: false,),
                ];
              },
              body: TabBarView(controller: _tabController,children: [
                const UserPicView(),
                PostListWidget(posts: kMockPost,isSliver: false,),
                const UserPicView()
              ],))
        ],
      ),
    ).backgroundImageWrap;
  }
}
