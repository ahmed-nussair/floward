import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int? albumId;
  int? userId;
  String? name;
  String? url;
  String? thumbnailUrl;

  User({this.albumId, this.userId, this.name, this.url, this.thumbnailUrl});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
