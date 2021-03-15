import 'package:github_user_search_app/domain/users/user.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class IUserRepository {
  Future<List<User>> searchUsers({String query});

}