import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yoloshow/pages/message/model/type.dart';

class MessageNav extends ConsumerWidget implements PreferredSizeWidget {
  final TabController tabController;

  const MessageNav({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: Text(
        '通知',
        style: TextStyle(fontSize: 18.sp, color: Colors.white),
      ),
      bottom: TabBar(
        tabs: MessageType.values
            .map((e) => Tab(
                  text: e.title,
                ))
            .toList(),
        controller: tabController,
        unselectedLabelColor: Colors.white,
        labelColor: Colors.purple,
        unselectedLabelStyle: TextStyle(fontSize: 12.sp),
        labelStyle: TextStyle(fontSize: 16.sp),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);
}
