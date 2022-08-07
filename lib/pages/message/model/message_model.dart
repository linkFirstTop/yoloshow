// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

///消息类型
enum MessageItemType {


  ///留言
  message(0),

  ///有人关注我
  follow(1),


  ///点赞
  like(2),


  ///未处理的
  nil(3);



  const MessageItemType(this.type);
  final int type;
}

///扩展
extension MessageItemTypeEnumExt on MessageItemType {
  int get toInt {
    switch(this){
      case MessageItemType.message:
        return 0;
      case MessageItemType.follow:
        return 1;
      case MessageItemType.like:
        return 2;
      default:
        return -1;
    }
  }
}

///扩展
extension MessageItemTypeIntExt on int {
  MessageItemType get toMessageTypeEnum {
    switch(this){
      case 0:
        return MessageItemType.message;
      case 1:
        return MessageItemType.follow;
      case 2:
        return MessageItemType.like;
      default:
        return MessageItemType.nil;
    }
  }
}

///消息列表模型
class MessageModel {
  final int id; //主键ID
  final int type; //消息类型
  final String avatar; //头像
  final String? subAvatar; //次要的头像
  final bool isOnline; //是否在线
  final String name; //用户昵称
  final String? atToName; //艾特的对象
  final String? msg; //留言的内容
  final String timeStr; //时间
  MessageModel({
    required this.id,
    required this.type,
    required this.avatar,
    this.subAvatar,
    required this.isOnline,
    required this.name,
    this.atToName,
    this.msg,
    required this.timeStr,
  });

  MessageModel copyWith({
    int? id,
    int? type,
    String? avatar,
    String? subAvatar,
    bool? isOnline,
    String? name,
    String? atToName,
    String? msg,
    String? timeStr,
  }) {
    return MessageModel(
      id: id ?? this.id,
      type: type ?? this.type,
      avatar: avatar ?? this.avatar,
      subAvatar: subAvatar ?? this.subAvatar,
      isOnline: isOnline ?? this.isOnline,
      name: name ?? this.name,
      atToName: atToName ?? this.atToName,
      msg: msg ?? this.msg,
      timeStr: timeStr ?? this.timeStr,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'avatar': avatar,
      'subAvatar': subAvatar,
      'isOnline': isOnline,
      'name': name,
      'atToName': atToName,
      'msg': msg,
      'timeStr': timeStr,
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      id: map['id'] as int,
      type: map['type'] as int,
      avatar: map['avatar'] as String,
      subAvatar: map['subAvatar'] != null ? map['subAvatar'] as String : null,
      isOnline: map['isOnline'] as bool,
      name: map['name'] as String,
      atToName: map['atToName'] != null ? map['atToName'] as String : null,
      msg: map['msg'] != null ? map['msg'] as String : null,
      timeStr: map['timeStr'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageModel.fromJson(String source) => MessageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MessageModel(id: $id, type: $type, avatar: $avatar, subAvatar: $subAvatar, isOnline: $isOnline, name: $name, atToName: $atToName, msg: $msg, timeStr: $timeStr)';
  }

  @override
  bool operator ==(covariant MessageModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.type == type &&
      other.avatar == avatar &&
      other.subAvatar == subAvatar &&
      other.isOnline == isOnline &&
      other.name == name &&
      other.atToName == atToName &&
      other.msg == msg &&
      other.timeStr == timeStr;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      type.hashCode ^
      avatar.hashCode ^
      subAvatar.hashCode ^
      isOnline.hashCode ^
      name.hashCode ^
      atToName.hashCode ^
      msg.hashCode ^
      timeStr.hashCode;
  }
}
