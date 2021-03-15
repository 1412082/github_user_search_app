import 'package:github_user_search_app/infrastructure/network/base/api_client.dart';
import 'package:github_user_search_app/infrastructure/network/requests/request.dart';

class SearchUserRequest extends Request {
  SearchUserRequest({String query})
      : super(
          url: '/search/users',
          queries: {
            'q': query,
          },
          method: HttpMethod.get,
        );
}
