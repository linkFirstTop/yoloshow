import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum UserTabEnum {
  release('Release', 0),
  purchased('Purchased', 1),
  eShop('E-Shop', 2);

  const UserTabEnum(this.title, this.number);

  final String title;
  final int number;
}

class UserTabs extends SliverPersistentHeaderDelegate {
  final TabController tabController;

  const UserTabs(this.tabController);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return TabBar(
      controller: tabController,
      tabs: UserTabEnum.values
          .map((e) => Tab(
                text: e.title,
              ))
          .toList(),
      unselectedLabelColor: Colors.white,
      labelColor: Colors.purple,
      unselectedLabelStyle: TextStyle(fontSize: 12.sp),
      labelStyle: TextStyle(fontSize: 16.sp),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}
