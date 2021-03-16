import 'package:github_user_search_app/domain/core/errors.dart';
import 'package:github_user_search_app/domain/users/i_user_repository.dart';
import 'package:github_user_search_app/domain/users/user.dart';
import 'package:github_user_search_app/infrastructure/core/network/network.dart';
import 'package:github_user_search_app/infrastructure/requests/search_user_request.dart';
import 'package:github_user_search_app/infrastructure/users/user_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

@prod
@dev
@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  /// Load network request.
  final INetworkRequestLoader _networkRequestLoader;

  /// Check the connection
  final INetworkConnectionChecker _networkConnectionChecker;

  /// Auto DI.
  UserRepository(this._networkRequestLoader, this._networkConnectionChecker);

  @override
  Stream<List<User>> searchUsers({String query}) {
    return _networkConnectionChecker.hasConnection().asStream().flatMap((hasConnection) {
      if (hasConnection) {
        final searchRequest = SearchUserRequest(searchCriteria: query);
        return _networkRequestLoader.loadRequest(searchRequest).flatMap(_flatMapListDtoToDomain);
      } else {
        return Stream.error(NoNetworkConnectionError());
      }
    });
  }

  /// Helper function to map list of [UserDto] to domain [User].
  Stream<List<User>> _flatMapListDtoToDomain(NetworkListData<UserDto> data) =>
      Stream<List<User>>.value(data?.items?.map((dto) => dto.toDomain())?.toList() ?? []);
}

@test
@LazySingleton(as: IUserRepository)
class MockUserRepository extends Mock implements IUserRepository {}
