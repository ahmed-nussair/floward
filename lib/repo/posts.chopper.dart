// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Posts extends Posts {
  _$Posts([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Posts;

  @override
  Future<Response<List<UserPost>>> getPosts() {
    final $url = '/posts';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<UserPost>, UserPost>($request);
  }

  @override
  Future<Response<List<UserPost>>> getPost(int id) {
    final $url = '/posts';
    final $params = <String, dynamic>{'id': id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<UserPost>, UserPost>($request);
  }

  @override
  Future<Response<List<UserPost>>> getPostsForUser(int userId) {
    final $url = '/posts';
    final $params = <String, dynamic>{'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<UserPost>, UserPost>($request);
  }
}
