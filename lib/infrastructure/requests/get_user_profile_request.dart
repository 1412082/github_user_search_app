import 'package:flutter/foundation.dart';
import 'package:github_user_search_app/infrastructure/core/network/network.dart';
import 'package:github_user_search_app/infrastructure/users/user_dtos.dart';
import 'package:github_user_search_app/infrastructure/users/user_profile_dtos.dart';

class GetUserProfileRequest extends JsonNetworkRequest<UserProfileDto> {
  final String username;

  GetUserProfileRequest({@required this.username}) : super((json) => UserProfileDto.fromJson(json));

  @override
  Future<Request> makeRequest() async => Request(
        url: '/users/$username',
        method: HttpMethod.get,
      );
}
