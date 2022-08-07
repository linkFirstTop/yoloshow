import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yoloshow/pages/message/mock/message_model_mock.dart';
import 'package:yoloshow/pages/message/model/type.dart';

import 'item_layout.dart';

///消息列表
class MessageListView extends ConsumerStatefulWidget {
  final MessageType type;

  const MessageListView(this.type, {Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MessageListViewState();
  }
}

class _MessageListViewState extends ConsumerState<MessageListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (c, i) => MessageItemLayout(messageListMockDatas[i], i),
      itemCount: messageListMockDatas.length,
    );
  }
}
