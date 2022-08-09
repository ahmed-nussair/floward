import 'package:chopper/chopper.dart';

import '../model/user.dart';
import 'base_url.dart';
import 'json_to_type_converter.dart';

part 'users.chopper.dart';

@ChopperApi(baseUrl: '/users')
abstract class Users extends ChopperService {
  @Get()
  Future<Response<List<User>>> getUsers();

  @Get()
  Future<Response<List<User>>> getUser(@Query() int userId);

  static Users create() {
    var client = ChopperClient(
      baseUrl: baseUrl,
      converter: JsonToTypeConverter({
        User: (json) => User.fromJson(json),
      }),
      services: [
        _$Users(),
      ],
    );
    return _$Users(client);
  }
}
