// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';


///模拟的虚假数据
final kMockPost = [
  ...List.generate(20, (index) => Post(
      id: '1',
      name: 'Kiera Bernie',
      accountName: '@ldd',
      location: 'New York',
      timeString: '1h',
      content: 'nothing but my panties',
      likeCount: 389,
      commentCount: 300,
      shareCount: 100,
      tag: '# Fashion',
      image: ['https://img.itbug.shop/public%2F2022-08-0107%3A41%3A21%2FHBv6Co.jpg'],
      avatar: 'https://img.itbug.shop/public%2F2022-08-0107%3A46%3A40%2F6Ryiq3.jpg'),)
];

class Post {
  final String id; //ID
  final List<String>? image; //图片列表
  final String name; //姓名
  final String avatar; //用户头像
  final String accountName; //唯一账户标识字符串
  final String location; //地址
  final String timeString; //发布时间
  final String content; //正文内容
  final int likeCount; //点赞数
  final int commentCount; //评论数
  final int shareCount; //分享数
  final String tag; //话题
  Post({
    required this.id,
    this.image,
    required this.name,
    required this.avatar,
    required this.accountName,
    required this.location,
    required this.timeString,
    required this.content,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    required this.tag,
  });

  Post copyWith({
    String? id,
    List<String>? image,
    String? name,
    String? avatar,
    String? accountName,
    String? location,
    String? timeString,
    String? content,
    int? likeCount,
    int? commentCount,
    int? shareCount,
    String? tag,
  }) {
    return Post(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      accountName: accountName ?? this.accountName,
      location: location ?? this.location,
      timeString: timeString ?? this.timeString,
      content: content ?? this.content,
      likeCount: likeCount ?? this.likeCount,
      commentCount: commentCount ?? this.commentCount,
      shareCount: shareCount ?? this.shareCount,
      tag: tag ?? this.tag,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'name': name,
      'avatar': avatar,
      'accountName': accountName,
      'location': location,
      'timeString': timeString,
      'content': content,
      'likeCount': likeCount,
      'commentCount': commentCount,
      'shareCount': shareCount,
      'tag': tag,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
        id: map['id'] as String,
        image: map['image'] != null ? List<String>.from((map['image'] as List<String>)) : null,
    name: map['name'] as String,
    avatar: map['avatar'] as String,
    accountName: map['accountName'] as String,
    location: map['location'] as String,
    timeString: map['timeString'] as String,
    content: map['content'] as String,
    likeCount: map['likeCount'] as int,
    commentCount: map['commentCount'] as int,
    shareCount: map['shareCount'] as int,
    tag: map['tag'] as String
    ,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Post(id: $id, image: $image, name: $name, avatar: $avatar, accountName: $accountName, location: $location, timeString: $timeString, content: $content, likeCount: $likeCount, commentCount: $commentCount, shareCount: $shareCount, tag: $tag)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;

    return
      other.id == id &&
          listEquals(other.image, image) &&
          other.name == name &&
          other.avatar == avatar &&
          other.accountName == accountName &&
          other.location == location &&
          other.timeString == timeString &&
          other.content == content &&
          other.likeCount == likeCount &&
          other.commentCount == commentCount &&
          other.shareCount == shareCount &&
          other.tag == tag;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    image.hashCode ^
    name.hashCode ^
    avatar.hashCode ^
    accountName.hashCode ^
    location.hashCode ^
    timeString.hashCode ^
    content.hashCode ^
    likeCount.hashCode ^
    commentCount.hashCode ^
    shareCount.hashCode ^
    tag.hashCode;
  }
}
