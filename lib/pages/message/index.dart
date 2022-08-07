import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yoloshow/pages/message/model/type.dart';
import 'package:yoloshow/pages/message/widget/list.dart';

import '../../wigdet/bg.dart';
import 'widget/nav.dart';

///消息页面
class MessagePage extends ConsumerStatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MessagePageState();
  }
}

class _MessagePageState extends ConsumerState<MessagePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: MessageNav(
          tabController: _tabController
      ),
      body: TabBarView(controller: _tabController, children: MessageType.values.map(MessageListView.new).toList()),
    ).backgroundImageWrap;
  }
}
