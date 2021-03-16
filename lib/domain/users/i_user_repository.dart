import 'package:github_user_search_app/domain/users/user.dart';

abstract class IUserRepository {
  Stream<List<User>> searchUsers({String query});
}