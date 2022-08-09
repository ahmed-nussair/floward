import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class UserPost {
  int? userId;
  int? id;
  String? title;
  String? body;

  UserPost({this.userId, this.id, this.title, this.body});

  factory UserPost.fromJson(Map<String, dynamic> json) =>
      _$UserPostFromJson(json);

  Map<String, dynamic> toJson() => _$UserPostToJson(this);
}
