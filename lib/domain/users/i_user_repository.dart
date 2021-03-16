import 'package:github_user_search_app/domain/users/user.dart';
import 'package:github_user_search_app/domain/users/user_profile.dart';

abstract class IUserRepository {
  Stream<List<User>> searchUsers({String query});
  Stream<UserProfile> getUserProfile({String username});
}