import 'package:flutter/material.dart';
import 'package:yoloshow/pages/index/widget/post_item_layout.dart';

import '../model/post.dart';

class PostListWidget extends StatelessWidget {
  final List<Post> posts;
  final bool isSliver;

  const PostListWidget({Key? key, required this.posts, this.isSliver = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isSliver) {
      return ListView.builder(
        itemBuilder: (c, i) {
          return PostItemLayout(
            post: posts[i],
          );
        },
        itemCount: posts.length,
      );
    }
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return PostItemLayout(
        post: posts[index],
      );
    }, childCount: posts.length));
  }
}
