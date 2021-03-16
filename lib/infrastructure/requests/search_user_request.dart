import 'package:flutter/foundation.dart';
import 'package:github_user_search_app/infrastructure/core/network/network.dart';
import 'package:github_user_search_app/infrastructure/users/user_dtos.dart';

class SearchUserRequest extends ListNetworkRequest<UserDto> {
  final String searchCriteria;

  SearchUserRequest({@required this.searchCriteria}) : super((json) => UserDto.fromJson(json));

  @override
  Future<Request> makeRequest() async => Request(
        url: '/search/users',
        parameters: {
          'q': searchCriteria,
        },
        method: HttpMethod.get,
      );
}
