import 'package:github_user_search_app/domain/users/i_user_repository.dart';
import 'package:github_user_search_app/domain/users/user.dart';
import 'package:github_user_search_app/infrastructure/network/base/api_client.dart';
import 'package:github_user_search_app/infrastructure/requests/search_user_request.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@prod
@lazySingleton
@Injectable(as: IUserRepository)
class UserRepository implements IUserRepository {
  final ApiClient apiClient;

  UserRepository(this.apiClient);
  @override
  Future<List<User>> searchUsers({String query}) {
    
  }

}

@test
@lazySingleton
@Injectable(as: IUserRepository)
class MockUserRepository extends Mock implements IUserRepository{
  @override
  Future<List<User>> searchUsers({String query}) {
    // TODO: implement searchUsers
    throw UnimplementedError();
  }
}

