// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


///视图模式模型
class UserViewPicModel {
  final String pic; //主图URL
  final bool isVideo; //是否为视频
  final bool isGroup; //是否多张图集
  UserViewPicModel({
    required this.pic,
    required this.isVideo,
    required this.isGroup,
  });

  UserViewPicModel copyWith({
    String? pic,
    bool? isVideo,
    bool? isGroup,
  }) {
    return UserViewPicModel(
      pic: pic ?? this.pic,
      isVideo: isVideo ?? this.isVideo,
      isGroup: isGroup ?? this.isGroup,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pic': pic,
      'isVideo': isVideo,
      'isGroup': isGroup,
    };
  }

  factory UserViewPicModel.fromMap(Map<String, dynamic> map) {
    return UserViewPicModel(
      pic: map['pic'] as String,
      isVideo: map['isVideo'] as bool,
      isGroup: map['isGroup'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserViewPicModel.fromJson(String source) => UserViewPicModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserViewPicModel(pic: $pic, isVideo: $isVideo, isGroup: $isGroup)';

  @override
  bool operator ==(covariant UserViewPicModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.pic == pic &&
      other.isVideo == isVideo &&
      other.isGroup == isGroup;
  }

  @override
  int get hashCode => pic.hashCode ^ isVideo.hashCode ^ isGroup.hashCode;
}
