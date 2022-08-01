import 'package:flutter/material.dart';
import 'package:yoloshow/pages/index/widget/post_item_layout.dart';

import '../model/post.dart';

class PostListWidget extends StatelessWidget {
  final List<Post> posts;
  const PostListWidget({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return PostItemLayout(post: posts[index],);
    },childCount: posts.length));
  }
}


