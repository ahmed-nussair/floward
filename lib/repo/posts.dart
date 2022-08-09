import 'package:chopper/chopper.dart';

import '../model/post.dart';
import 'base_url.dart';
import 'json_to_type_converter.dart';

part 'posts.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class Posts extends ChopperService {
  @Get()
  Future<Response<List<UserPost?>>> getPosts();

  @Get()
  Future<Response<List<UserPost?>>> getPost(@Query() int id);

  @Get()
  Future<Response<List<UserPost?>>> getPostsForUser(@Query() int userId);

  static Posts create() {
    var client = ChopperClient(
      baseUrl: baseUrl,
      converter: JsonToTypeConverter({
        UserPost: (json) => UserPost.fromJson(json),
      }),
      services: [
        _$Posts(),
      ],
    );
    return _$Posts(client);
  }
}
